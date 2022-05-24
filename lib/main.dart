import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:image_server/src/router/route.router.gr.dart';

import 'src/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final appRouter = AppRouter();
  runApp(MyApp(
    appRouter: appRouter,
  ));
}
