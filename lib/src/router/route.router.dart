import 'package:auto_route/annotations.dart';
import 'package:image_server/src/router/tab_bar_button.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    tabBarButton,
  ],
)
class $AppRouter {}
