import 'package:firebase_storage/firebase_storage.dart';
import 'package:pictureperfect/controllers/database/models/email_model.dart';
import 'package:pictureperfect/controllers/moviehome/models/movie_model.dart';
import 'package:pictureperfect/core/constants/movies_category_enum.dart';
import 'package:pictureperfect/core/network/dio_util.dart';
import 'package:pictureperfect/core/utils/logger_utils.dart';

import '../../controllers/moviedetails/models/movie_details_model.dart';

class MovieRepository{

  final _logger = LoggerUtils();
  final _TAG = "MovieRepository";

  Future<MovieModel> hitServerForNowPlayingMovies(MoviesCategoryEnum moviesCategoryEnum) async{
    try{
        var dio = await DioUtil().createApiDioInstance();
        switch(moviesCategoryEnum){
          case MoviesCategoryEnum.NOW_PLAYING:{
            final apiResponse = await dio?.get(
                "movie/now_playing",
                queryParameters: {
                  "language" : "en-US",
                  "page" : "1"
                }
            );
            MovieModel model = MovieModel.fromJson(apiResponse?.data ?? "");
            return Future.value(model);
          }
          case MoviesCategoryEnum.TOP_RATED: {
            final apiResponse = await dio?.get(
                "movie/top_rated",
                queryParameters: {
                  "language" : "en-US",
                  "page" : "1"
                }
            );
            MovieModel model = MovieModel.fromJson(apiResponse?.data ?? "");
            return Future.value(model);
          }
          case MoviesCategoryEnum.UP_COMING: {
            final apiResponse = await dio?.get(
                "movie/upcoming",
                queryParameters: {
                  "language" : "en-US",
                  "page" : "1"
                }
            );
            MovieModel model = MovieModel.fromJson(apiResponse?.data ?? "");
            return Future.value(model);
          }
          case MoviesCategoryEnum.POPULAR: {
            final apiResponse = await dio?.get(
                "movie/popular",
                queryParameters: {
                  "language" : "en-US",
                  "page" : "1"
                }
            );
            MovieModel model = MovieModel.fromJson(apiResponse?.data ?? "");
            return Future.value(model);
          }
        }

    }
    catch(exception){
      //var customNetworkException = exception as CustomNetworkException;
      _logger.log(TAG: _TAG, message: "Exception in now playing api $exception");
      return Future.error(exception);
    }
  }

  Future<List<String>>  fetchImagesFromFirebase() async{
    try{
      List<String> imageUrls = [];
      final storageRef = FirebaseStorage.instance.ref("vouchers");
      final listOfImages = await storageRef.listAll();
      if(listOfImages.items.isNotEmpty){
        for(var individualImages in listOfImages.items){
          String downloadUrl = await individualImages.getDownloadURL();
          _logger.log(TAG: _TAG, message: "Download url $downloadUrl");
          imageUrls.add(downloadUrl);
        }
      }
      else{
        return Future.error("No images present in vouchers directory");
      }
      return Future.value(imageUrls);
    }
    catch(exception){
      _logger.log(TAG: _TAG, message: "Exception in fetching images from firebase $exception");
      return Future.error("Exception in fetching images from firebase $exception");
    }
  }

  Future<MovieDetailsModel> hitServerToGetMovieDetails(int movieId) async{
    try{
      var dio = await DioUtil().createApiDioInstance();
      final apiResponse = await dio?.get(
          "movie/$movieId",
          queryParameters: {
            "language" : "en-US",
          }
      );
      MovieDetailsModel model = MovieDetailsModel.fromJson(apiResponse?.data ?? "");
      return Future.value(model);
    }
    catch(exception){
      _logger.log(TAG: _TAG, message: "Exceptionn $exception");
      return Future.error("Exceptionn $exception");
    }
  }

  Future<bool> sendEmail(EmailModel emailModel) async{
    try{
      var dio = await DioUtil().createEmailApiDioInstance();
      final apiResponse = await dio?.post(
          "mail",
          data: emailModel.toJson()
      );
      if(apiResponse != null && apiResponse.statusCode == 201){
        return Future.value(true);
      }
      else{
        return Future.value(false);
      }
    }
    catch(exception){
      _logger.log(TAG: _TAG, message: "Exceptionn $exception");
      return Future.error("Exceptionn $exception");
    }
  }

}