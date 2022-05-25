import 'package:auto_route/auto_route.dart';
import 'package:image_server/src/ImageUplaod/pages/image_upload.page.dart';
import 'package:image_server/src/Menu/pages/menu.page.dart';
import 'package:image_server/src/NewUser/pages/newuser.page.dart';
import 'package:image_server/src/router/tab_button.router.dart';

const rootRoute = AutoRoute(
  page: RootTabPage,
  initial: true,
  name: 'RootRouter',
  children: [
    ///** ImageUplaod main Tab */
    AutoRoute(
      page: EmptyRouterPage,
      path: 'ImageUplaod',
      name: "ImageUploadRouter",
      children: [
        AutoRoute(page: ImageUploadsPage, path: ''),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),

    ///** ImageUplaod Main Menu */

    AutoRoute(
      page: EmptyRouterPage,
      path: 'Menu',
      name: "MenuRouter",
      children: [
        AutoRoute(page: MenuPage, path: ''),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),

    ///** ImageUplaod main NewUser */

    AutoRoute(
      page: EmptyRouterPage,
      path: 'NewUserUplaod',
      name: "NewUserRouter",
      children: [
        AutoRoute(page: NewUserPage, path: ''),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
  ],
);
