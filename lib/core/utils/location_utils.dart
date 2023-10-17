import 'package:location/location.dart';

class LocationUtils{
  Future<LocationData?> getCurrentLocation() async{
    Location location = Location();
    PermissionStatus haslocationPermission = await location.hasPermission();
    if(haslocationPermission == PermissionStatus.denied){
      PermissionStatus locationPermission = await location.requestPermission();
      if(locationPermission != PermissionStatus.granted){
        return Future.error("Permission denied");
      }
    }

    LocationData locationData = await location.getLocation();
    print("Location data available $locationData");
    return Future.value(locationData);
  }
}