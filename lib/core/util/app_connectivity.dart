import 'package:connectivity_plus/connectivity_plus.dart';

class AppConnectivity{
  // ignore: prefer_typing_uninitialized_variables
  late var _result;
  Future<AppConnectivity> init() async{
    _result = await Connectivity().checkConnectivity();
    return this;
  }

  getConnection(){
    if(_result == ConnectivityResult.mobile ){
      return true;
    }else if(_result == ConnectivityResult.wifi){
      return true;
    }else if(_result == ConnectivityResult.ethernet){
      return true;
    }else if(_result == ConnectivityResult.none){
      return false;
    }else{
      return false;
    }
  }
}