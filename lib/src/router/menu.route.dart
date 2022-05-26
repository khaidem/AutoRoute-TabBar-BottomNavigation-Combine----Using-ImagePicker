import 'package:auto_route/auto_route.dart';
import 'package:image_server/src/Menu/pages/menu.page.dart';

const menu = AutoRoute(
    path: 'Menu',
    page: EmptyRouterPage,
    name: 'MenuTab',
    children: [AutoRoute(page: MenuPage, path: '')]);
