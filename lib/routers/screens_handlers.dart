import 'package:dashboard_flutter_web/ui/layouts/screens/web_ui.dart';
import 'package:fluro/fluro.dart';

class ScreenHandlers{

  static Handler webUI = Handler(
    handlerFunc: (context, params){
      return const WebUi();
    }
  );
}
