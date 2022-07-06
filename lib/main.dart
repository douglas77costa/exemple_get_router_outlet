import 'package:exemple_get_router_outlet/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/route_manager.dart';

import 'modules/home/home_page.dart';

void main() {
  return runApp(ModularApp(module: AppModule(), child: AppWidget()));
}


class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp.router(
      title: 'My Smart App',
      theme: ThemeData(primarySwatch: Colors.blue),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    ); //added by extension
  }
}

class AppModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.singleton((i) => HomeController())
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/',
        child: (context, args) => HomePage(),
    ),
  ];
}


