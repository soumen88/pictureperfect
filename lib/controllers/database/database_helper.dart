import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:pictureperfect/controllers/database/models/cinema_info_model.dart';
import 'package:pictureperfect/core/constants/app_constants.dart';
import 'package:pictureperfect/core/utils/logger_utils.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper{
  final _logger = LoggerUtils();
  final _TAG = "DatabaseHelper";
  static final DatabaseHelper instance = DatabaseHelper._init();
  late Database _database;
  DatabaseHelper._init();

  Future<bool> isDBPresent() async{
    try{
      bool isDbCopyDone = false;
      var databasePath = await getDatabasesPath();
      var path = join(databasePath, AppConstants.kDatabaseName);
      var doesDatabaseExists = await databaseExists(path);
      if(!doesDatabaseExists){
          await Directory(dirname(path)).create(recursive: true);
          ByteData data = await rootBundle.load(join("assets/database", AppConstants.kDatabaseName));
          List<int> dbBytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
          await File(path).writeAsBytes(dbBytes, flush: true);
          _logger.log(TAG: _TAG, message: "Database created $path");
          isDbCopyDone = true;
      }
      else{
        isDbCopyDone = true;
      }
      _database = await openDatabase(path, readOnly: true);
      return Future.value(isDbCopyDone);
    }
    catch(exception){
      _logger.log(TAG: _TAG, message: "Error occurred in copying database $exception");
      return Future.error("Error occurred in copying database $exception");
    }


  }

  Future<List<CinemaInfoModel>> getAllCinemasList() async{
    try{
      List<CinemaInfoModel> cinemasList = [];
      var selectQueryData = await _database.rawQuery("Select * from Information");
      for(var currentData in selectQueryData){
        int id = int.parse(currentData["Id"].toString());
        String cinemaType = currentData["CinemaType"].toString();
        String theatreName = currentData["NameoftheTheatre"].toString();
        String contactDetails = currentData["ContactDetails"].toString();
        String location = currentData["Location"].toString();
        double latitude = double.parse(currentData["Latitude"].toString()) ;
        double longitude = double.parse(currentData["Longitude"].toString()) ;
        String areaName = currentData["AreaName"].toString();
        CinemaInfoModel infoModel = CinemaInfoModel(
            id: id,
            cinemaType: cinemaType,
            nameOfTheTheatre: theatreName,
            contactDetails: contactDetails,
            location: location,
            latitude: latitude,
            longitude: longitude,
            areaName: areaName
        );
        cinemasList.add(infoModel);
      }
      return Future.value(cinemasList);
    }
    catch(exception){
      _logger.log(TAG: _TAG, message: "Exception $exception");
      return Future.error("Exception $exception");
    }
  }
}