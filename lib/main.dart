import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pictureperfect/controllers/authentication/create_an_account_screen_bloc.dart';
import 'package:pictureperfect/controllers/database/book_ticket_bloc.dart';
import 'package:pictureperfect/core/constants/app_constants.dart';
import 'package:pictureperfect/core/constants/color_constants.dart';
import 'package:pictureperfect/core/routing/app_router.dart';
import 'package:pictureperfect/view/splash_screen.dart';

import 'controllers/database/isar_local_storage_manager.dart';

void main() async{
  await init();
  runApp(
      MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (BuildContext context) => CreateAnAccountScreenBloc()
            ),
            BlocProvider(
                create: (BuildContext context) => BookTicketBloc()
            )
          ],
          child: MyApp()
      )
  );
}

Future<void> init() async{
  WidgetsFlutterBinding.ensureInitialized();
  await IsarLocalStorageManager.instance.initializeDatabase();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget{
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConstants.kAppName,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      theme: ThemeData(
        scaffoldBackgroundColor: ColorConstants.kBackgroundColor
      ),
      builder: (BuildContext context, Widget? child){
        return child!;
      },
    );
  }

}