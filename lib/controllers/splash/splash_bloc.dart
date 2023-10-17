import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pictureperfect/controllers/database/isar_local_storage_manager.dart';
import 'package:pictureperfect/controllers/database/local_storage_keys.dart';
import 'package:pictureperfect/controllers/splash/events/splash_screen_events.dart';
import 'package:pictureperfect/controllers/splash/states/splash_screen_states.dart';
import 'package:pictureperfect/core/utils/logger_utils.dart';

class SplashBloc extends Bloc<SplashScreenEvents, SplashScreenStates>{

  final _isarHelper = IsarLocalStorageManager.instance;
  final _logger = LoggerUtils();
  final _TAG = "SplashBloc";

  SplashBloc() : super(const SplashScreenStates.displayView()) {
    on<SplashScreenEvents>((event, emit) async{
      await event.map(
          initEvent: (event) async => await _init(event, emit),
      );
    });
  }

  Future<void> _init(InitSplashEvent event, Emitter<SplashScreenStates> emit) async{
      emit(const SplashScreenStates.displayView());
      await Future.delayed(Duration(seconds: 3), () async{
        bool isLogin = await _isarHelper.getBoolValue(LocalStorageKeys.IS_USER_LOGGED_IN.toString()) ?? false;
        _logger.log(TAG: _TAG, message: "Is login $isLogin");
        emit(SplashScreenStates.startNextScreen(isLogin));
      });
  }
}