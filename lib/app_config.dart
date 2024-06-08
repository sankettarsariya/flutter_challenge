
import 'package:demo_task/routes/app_router.dart';

class AppConfig{
  static  AppRouter? appRouter;

  static init()async{
    appRouter = AppRouter();
  }

}