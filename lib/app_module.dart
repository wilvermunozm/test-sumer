import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_sumer/features/landing_page/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => <Bind<Object>>[];

  @override
  List<ModularRoute> get routes => <ModularRoute>[
        ChildRoute<dynamic>(
          Modular.initialRoute,
          child: (
            BuildContext context,
            dynamic args,
          ) =>
              const HomePage(),
        ),
      ];
}
