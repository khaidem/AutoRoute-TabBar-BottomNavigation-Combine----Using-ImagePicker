// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i6;

import '../ImageUplaod/pages/image_upload.page.dart' as _i3;
import '../Menu/pages/menu.page.dart' as _i4;
import '../NewUser/pages/newuser.page.dart' as _i5;
import 'tab_button.router.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    RootRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.RootTabPage());
    },
    ImageUploadRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    MenuRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    NewUserRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ImageUploadsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ImageUploadsPage());
    },
    MenuRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.MenuPage());
    },
    NewUserRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.NewUserPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(RootRouter.name, path: '/', children: [
          _i2.RouteConfig(ImageUploadRouter.name,
              path: 'ImageUplaod',
              parent: RootRouter.name,
              children: [
                _i2.RouteConfig(ImageUploadsRoute.name,
                    path: '', parent: ImageUploadRouter.name),
                _i2.RouteConfig('*#redirect',
                    path: '*',
                    parent: ImageUploadRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i2.RouteConfig(MenuRouter.name,
              path: 'Menu',
              parent: RootRouter.name,
              children: [
                _i2.RouteConfig(MenuRoute.name,
                    path: '', parent: MenuRouter.name),
                _i2.RouteConfig('*#redirect',
                    path: '*',
                    parent: MenuRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i2.RouteConfig(NewUserRouter.name,
              path: 'NewUserUplaod',
              parent: RootRouter.name,
              children: [
                _i2.RouteConfig(NewUserRoute.name,
                    path: '', parent: NewUserRouter.name),
                _i2.RouteConfig('*#redirect',
                    path: '*',
                    parent: NewUserRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.RootTabPage]
class RootRouter extends _i2.PageRouteInfo<void> {
  const RootRouter({List<_i2.PageRouteInfo>? children})
      : super(RootRouter.name, path: '/', initialChildren: children);

  static const String name = 'RootRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ImageUploadRouter extends _i2.PageRouteInfo<void> {
  const ImageUploadRouter({List<_i2.PageRouteInfo>? children})
      : super(ImageUploadRouter.name,
            path: 'ImageUplaod', initialChildren: children);

  static const String name = 'ImageUploadRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class MenuRouter extends _i2.PageRouteInfo<void> {
  const MenuRouter({List<_i2.PageRouteInfo>? children})
      : super(MenuRouter.name, path: 'Menu', initialChildren: children);

  static const String name = 'MenuRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class NewUserRouter extends _i2.PageRouteInfo<void> {
  const NewUserRouter({List<_i2.PageRouteInfo>? children})
      : super(NewUserRouter.name,
            path: 'NewUserUplaod', initialChildren: children);

  static const String name = 'NewUserRouter';
}

/// generated route for
/// [_i3.ImageUploadsPage]
class ImageUploadsRoute extends _i2.PageRouteInfo<void> {
  const ImageUploadsRoute() : super(ImageUploadsRoute.name, path: '');

  static const String name = 'ImageUploadsRoute';
}

/// generated route for
/// [_i4.MenuPage]
class MenuRoute extends _i2.PageRouteInfo<void> {
  const MenuRoute() : super(MenuRoute.name, path: '');

  static const String name = 'MenuRoute';
}

/// generated route for
/// [_i5.NewUserPage]
class NewUserRoute extends _i2.PageRouteInfo<void> {
  const NewUserRoute() : super(NewUserRoute.name, path: '');

  static const String name = 'NewUserRoute';
}
