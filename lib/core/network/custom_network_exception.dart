import 'network_error_type_enum.dart';

class CustomNetworkException implements Exception {
  final String? errorResponseJsonMap;
  final String? errorMessage;
  final int? errorCode;
  final NetworkErrorType networkErrorType;
  bool? isTokenRefreshed = false;
  CustomNetworkException({this.errorResponseJsonMap, this.errorCode, required this.errorMessage, required this.networkErrorType, this.isTokenRefreshed});

  String toString() {
    return "Error occurred with message $errorMessage and status code $errorCode" ;
  }
}