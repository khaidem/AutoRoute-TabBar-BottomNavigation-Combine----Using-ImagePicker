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
import 'package:flutter/material.dart' as _i7;

import '../ImageUplaod/pages/image_upload.page.dart' as _i3;
import '../ImageUplaod/pages/milti_picker.page.dart' as _i4;
import '../Menu/pages/menu.page.dart' as _i5;
import '../NewUser/pages/newuser.page.dart' as _i6;
import 'tab_button.router.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    RootRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.RootTabPage());
    },
    ImageTab.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    MenuTab.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    NewUserTab.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ImageUploadsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ImageUploadsPage());
    },
    MultiPickerRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.MultiPickerPage());
    },
    MenuRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.MenuPage());
    },
    NewUserRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.NewUserPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(RootRouter.name, path: '/', children: [
          _i2.RouteConfig(ImageTab.name,
              path: 'image',
              parent: RootRouter.name,
              children: [
                _i2.RouteConfig(ImageUploadsRoute.name,
                    path: '', parent: ImageTab.name),
                _i2.RouteConfig(MultiPickerRoute.name,
                    path: '', parent: ImageTab.name)
              ]),
          _i2.RouteConfig(MenuTab.name,
              path: 'Menu',
              parent: RootRouter.name,
              children: [
                _i2.RouteConfig(MenuRoute.name, path: '', parent: MenuTab.name)
              ]),
          _i2.RouteConfig(NewUserTab.name,
              path: 'NewUser',
              parent: RootRouter.name,
              children: [
                _i2.RouteConfig(NewUserRoute.name,
                    path: '', parent: NewUserTab.name)
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
class ImageTab extends _i2.PageRouteInfo<void> {
  const ImageTab({List<_i2.PageRouteInfo>? children})
      : super(ImageTab.name, path: 'image', initialChildren: children);

  static const String name = 'ImageTab';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class MenuTab extends _i2.PageRouteInfo<void> {
  const MenuTab({List<_i2.PageRouteInfo>? children})
      : super(MenuTab.name, path: 'Menu', initialChildren: children);

  static const String name = 'MenuTab';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class NewUserTab extends _i2.PageRouteInfo<void> {
  const NewUserTab({List<_i2.PageRouteInfo>? children})
      : super(NewUserTab.name, path: 'NewUser', initialChildren: children);

  static const String name = 'NewUserTab';
}

/// generated route for
/// [_i3.ImageUploadsPage]
class ImageUploadsRoute extends _i2.PageRouteInfo<void> {
  const ImageUploadsRoute() : super(ImageUploadsRoute.name, path: '');

  static const String name = 'ImageUploadsRoute';
}

/// generated route for
/// [_i4.MultiPickerPage]
class MultiPickerRoute extends _i2.PageRouteInfo<void> {
  const MultiPickerRoute() : super(MultiPickerRoute.name, path: '');

  static const String name = 'MultiPickerRoute';
}

/// generated route for
/// [_i5.MenuPage]
class MenuRoute extends _i2.PageRouteInfo<void> {
  const MenuRoute() : super(MenuRoute.name, path: '');

  static const String name = 'MenuRoute';
}

/// generated route for
/// [_i6.NewUserPage]
class NewUserRoute extends _i2.PageRouteInfo<void> {
  const NewUserRoute() : super(NewUserRoute.name, path: '');

  static const String name = 'NewUserRoute';
}
