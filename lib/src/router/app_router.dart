import 'package:auto_route/annotations.dart';
import 'package:image_server/src/router/root.route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    rootRoute,
  ],
)
class $AppRouter {}
