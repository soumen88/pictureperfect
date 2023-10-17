import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import '../constants/error_constants.dart';
import '../utils/logger_utils.dart';
import 'custom_network_exception.dart';
import 'network_error_type_enum.dart';


/// Interceptor for the app
class AppInterceptor extends Interceptor {
  final _TAG = "AppInterceptor";
  final _logger = LoggerUtils();

  @override
  void onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) {
    if(isNullEmptyOrFalse(response.data)){
      handler.next(response);
      return;
    }
    handler.next(response);
  }

  @override
  void onError(DioException error, ErrorInterceptorHandler handler) async {
    // Check if error is of time out error
    if (error.type == DioExceptionType.sendTimeout ||
        error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.receiveTimeout) {

      error = DioException(
        requestOptions: error.requestOptions,
        type: DioExceptionType.badResponse,
        error: CustomNetworkException(
          errorMessage: ErrorConstants.kFailedConnectMessage,
          networkErrorType: NetworkErrorType.SERVER_CONNECTION_ERROR,
          errorCode: error.response?.statusCode,
          errorResponseJsonMap: error.response?.data,
        ),
      );
    }
    // Check if the error is regarding no internet connection.
    else if (error.type == DioExceptionType.unknown && error.error is SocketException) {

      error = DioException(
        requestOptions: error.requestOptions,
        type: DioExceptionType.badResponse,
        error: CustomNetworkException(
          errorMessage: ErrorConstants.kNoInternetMessage,
          networkErrorType: NetworkErrorType.SERVER_CONNECTION_ERROR,
          errorCode: error.response?.statusCode,
          errorResponseJsonMap: error.response?.data,
        ),
      );
    }
    // Check if server responded with non-success status code.
    // In this case, we will check if we got a specific error
    // from API to display to the user.
    else{
      _logger.log(TAG: _TAG, message: "Inside else in interceptor");
      await _getErrorObject(error.response)
          .then((errorObj){
              error = DioException(
                requestOptions: error.requestOptions,
                type: DioExceptionType.badResponse,
                error: errorObj
              );
          })
          .catchError((errorObj){
            _logger.log(TAG: _TAG, message: "Failed to parse error object because $errorObj");
            error = errorObj;
          });
    }
    _logger.log(TAG: _TAG, message: "Rejecting because of error");
    handler.reject(error);
  }

  /// Parses the response to get the error object if any
  /// from the API response based on status code.
  Future<CustomNetworkException?> _getErrorObject(Response? response) async {
    final responseData = response?.data;
    if(response != null){
      switch(response.statusCode){
        case 403:{
          var customNetworkException = CustomNetworkException(
            errorMessage:
            responseData['message'] ?? ErrorConstants.kSomethingWentWrong,
            errorCode: response.statusCode,
            networkErrorType: NetworkErrorType.RESPONSE_ERROR,
            errorResponseJsonMap: null,
          );
          return customNetworkException;
        }
        case 404:{
          _logger.log(TAG : _TAG, message: "You are trying to reach a endpoint which does not exist");
          var customNetworkException = CustomNetworkException(
            errorMessage: ErrorConstants.k404ErrorMessage,
            errorCode: response.statusCode,
            networkErrorType: NetworkErrorType.INVALID_ENDPOINT_ERROR,
            errorResponseJsonMap: null,
          );
          return customNetworkException;
        }
        case 400:{
          _logger.log(TAG : _TAG, message: "Bad response received");
          var customNetworkException = CustomNetworkException(
            errorMessage: response.data.toString(),
            errorCode: response.statusCode,
            networkErrorType: NetworkErrorType.RESPONSE_ERROR,
            errorResponseJsonMap: null,
          );
          return customNetworkException;
        }
        case 429:{
          _logger.log(TAG: _TAG, message : "You are doing to many requests on server");
          var customNetworkException = CustomNetworkException(
            errorMessage:responseData['message'] ?? ErrorConstants.k401ErrorMessage,
            errorCode: response.statusCode,
            networkErrorType: NetworkErrorType.INVALID_ENDPOINT_ERROR,
            errorResponseJsonMap: null,
          );
          return customNetworkException;
        }

        default:
          if (responseData != null && responseData is Map) {

            var customNetworkException = CustomNetworkException(
              errorMessage: ErrorConstants.kSomethingWentWrong,
              errorCode: response.statusCode,
              networkErrorType: NetworkErrorType.RESPONSE_ERROR,
              errorResponseJsonMap: jsonEncode(responseData),
            );
            return customNetworkException;
          }
          else {
            var customNetworkException = CustomNetworkException(
              errorMessage: 'Error occurred while Communication with Server with StatusCode : ${response.statusCode}',
              networkErrorType: NetworkErrorType.RESPONSE_ERROR,
              errorCode: response.statusCode,
              errorResponseJsonMap: null,
            );
            return customNetworkException;
          }
      }
    }
    return null;
  }
}

bool isNullEmptyOrFalse(dynamic o) {
  if (o is Map<String, dynamic> || o is List<dynamic>) {
    return o == null || o.length == 0;
  }
  return o == null || false == o || "" == o;
}
