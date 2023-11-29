
import 'package:dashboard_flutter_web/ui/views/no_page_found.dart';
import 'package:fluro/fluro.dart';

class NoPageFoundHandlers{

  static Handler noPageFound = Handler(
    handlerFunc: (context, params){
      return const NoPageFoundView();
    }
  );
}
