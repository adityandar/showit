import 'package:flutter/material.dart';
import 'package:showit/dependencies/dependencies.dart';
import 'package:showit/services/services.dart';
import 'package:showit/showit_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await ServiceLocator.setup();
  runApp(ShowitApp());
}
