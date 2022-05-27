import 'package:auto_route/auto_route.dart';
import 'package:image_server/src/router/menu.route.dart';
import 'package:image_server/src/router/new_user.route.dart';
import 'package:image_server/src/router/single_image.dart';
import 'package:image_server/src/router/tab_button.router.dart';

const rootRoute = AutoRoute(
  page: BottomNavigationPage,
  initial: true,
  name: 'RootRouter',
  children: [
    imageTab,
    menu,
    newUserTab,
  ],
);
