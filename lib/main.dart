import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intelicity_auth_web/app/app_module.dart';
import 'package:intelicity_auth_web/app/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
