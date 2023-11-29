import 'package:dashboard_flutter_web/routers/admin_handlers.dart';
import 'package:dashboard_flutter_web/routers/no_page_found_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter{
  static final FluroRouter router = FluroRouter();
  //Root Route
  static String rootRoute = '/';

  //Auth Router
  static String loginRoute = '/auth/login';
  static String registerRoute = '/auth/login';

  //Dashboard
  static String dashboardRoute = '/dashboard';


  static void configureRoutes(){
    //Auth Routes
    router.define(rootRoute, handler: AdminHandlers.login);
    router.define(loginRoute, handler: AdminHandlers.login);
    //router.define(registerRoute, handler: null);

    //404
    router.notFoundHandler = NoPageFoundHandlers.noPageFound;

  }
}
