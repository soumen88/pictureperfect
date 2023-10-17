import 'package:dio/dio.dart';
import 'package:pictureperfect/core/constants/app_constants.dart';
import '../constants/error_constants.dart';
import '../utils/logger_utils.dart';
import 'app_interceptor.dart';


class DioUtil{
  final _TAG = "DioUtil";
  final _logger = LoggerUtils();

  Future<Dio?> createApiDioInstance() async{

    var dio = Dio();

    final baseOptions = BaseOptions(
      baseUrl: "https://api.themoviedb.org/3/",
      contentType: "application/json",
      headers: {
        'Authorization': AppConstants.kMovieDBApiKey
      }
    );

    final logInterceptor = LogInterceptor(
        error: true,
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        request: true,
        responseHeader: true,
        logPrint: (object){
          _logger.log(TAG: _TAG, message: object.toString());
        }
    );

    dio = Dio(baseOptions)..interceptors.addAll([
      logInterceptor,
      AppInterceptor(),
    ]);

    return dio;
  }

  Future<Dio?> createEmailApiDioInstance() async{

    var dio = Dio();

    final baseOptions = BaseOptions(
        baseUrl: "https://emailsample-903d.restdb.io/",
        contentType: "application/json",
        headers: {
          "x-apikey": AppConstants.kRestDBAPIKey,
        }
    );

    final logInterceptor = LogInterceptor(
        error: true,
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        request: true,
        responseHeader: true,
        logPrint: (object){
          _logger.log(TAG: _TAG, message: object.toString());
        }
    );

    dio = Dio(baseOptions)..interceptors.addAll([
      logInterceptor,
      AppInterceptor(),
    ]);

    return dio;
  }

}