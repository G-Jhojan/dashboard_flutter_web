import 'package:dashboard_flutter_web/ui/views/login_view.dart';
import 'package:dashboard_flutter_web/ui/views/register_view.dart';
import 'package:fluro/fluro.dart';

class AdminHandlers{

  static Handler login = Handler(
    handlerFunc: (context, params){
      return const LoginView();
    }
  );

  static Handler register = Handler(
    handlerFunc: (context, params){
      return const RegisterView();
    }
  );
}
