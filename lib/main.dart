import 'package:dashboard_flutter_web/routers/router.dart';
import 'package:dashboard_flutter_web/ui/layouts/auth/auth_layout.dart';
import 'package:flutter/material.dart';

void main() {

  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      showSemanticsDebugger:  false,
      title: 'Material App',
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      builder: (context, child){
        return const Authlayout();
      },
    );
  }
}
