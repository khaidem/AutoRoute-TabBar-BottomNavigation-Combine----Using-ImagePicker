// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i7;

import '../ImageUplaod/pages/image_upload.page.dart' as _i5;
import '../ImageUplaod/pages/milti_picker.page.dart' as _i6;
import '../Menu/pages/menu.page.dart' as _i2;
import '../NewUser/pages/newuser.page.dart' as _i3;
import 'tab_button.router.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    RootRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.BottomNavigationPage());
    },
    RootTabRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.RootTabPage());
    },
    MenuRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.MenuPage());
    },
    NewUserRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.NewUserPage());
    },
    ImageUploadTab.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    MultiUploadTab.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    ImageUploadsRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ImageUploadsPage());
    },
    MultiPickerRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.MultiPickerPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(RootRouter.name, path: '/', children: [
          _i4.RouteConfig(RootTabRouter.name,
              path: 'root-tab-page',
              parent: RootRouter.name,
              children: [
                _i4.RouteConfig(ImageUploadTab.name,
                    path: 'ImageUpload',
                    parent: RootTabRouter.name,
                    children: [
                      _i4.RouteConfig(ImageUploadsRoute.name,
                          path: '', parent: ImageUploadTab.name)
                    ]),
                _i4.RouteConfig(MultiUploadTab.name,
                    path: 'MultiUpload',
                    parent: RootTabRouter.name,
                    children: [
                      _i4.RouteConfig(MultiPickerRoute.name,
                          path: '', parent: MultiUploadTab.name)
                    ])
              ]),
          _i4.RouteConfig(MenuRoute.name,
              path: 'Menu', parent: RootRouter.name),
          _i4.RouteConfig(NewUserRoute.name,
              path: 'NewUser', parent: RootRouter.name)
        ])
      ];
}

/// generated route for
/// [_i1.BottomNavigationPage]
class RootRouter extends _i4.PageRouteInfo<void> {
  const RootRouter({List<_i4.PageRouteInfo>? children})
      : super(RootRouter.name, path: '/', initialChildren: children);

  static const String name = 'RootRouter';
}

/// generated route for
/// [_i1.RootTabPage]
class RootTabRouter extends _i4.PageRouteInfo<void> {
  const RootTabRouter({List<_i4.PageRouteInfo>? children})
      : super(RootTabRouter.name,
            path: 'root-tab-page', initialChildren: children);

  static const String name = 'RootTabRouter';
}

/// generated route for
/// [_i2.MenuPage]
class MenuRoute extends _i4.PageRouteInfo<void> {
  const MenuRoute() : super(MenuRoute.name, path: 'Menu');

  static const String name = 'MenuRoute';
}

/// generated route for
/// [_i3.NewUserPage]
class NewUserRoute extends _i4.PageRouteInfo<void> {
  const NewUserRoute() : super(NewUserRoute.name, path: 'NewUser');

  static const String name = 'NewUserRoute';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class ImageUploadTab extends _i4.PageRouteInfo<void> {
  const ImageUploadTab({List<_i4.PageRouteInfo>? children})
      : super(ImageUploadTab.name,
            path: 'ImageUpload', initialChildren: children);

  static const String name = 'ImageUploadTab';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class MultiUploadTab extends _i4.PageRouteInfo<void> {
  const MultiUploadTab({List<_i4.PageRouteInfo>? children})
      : super(MultiUploadTab.name,
            path: 'MultiUpload', initialChildren: children);

  static const String name = 'MultiUploadTab';
}

/// generated route for
/// [_i5.ImageUploadsPage]
class ImageUploadsRoute extends _i4.PageRouteInfo<void> {
  const ImageUploadsRoute() : super(ImageUploadsRoute.name, path: '');

  static const String name = 'ImageUploadsRoute';
}

/// generated route for
/// [_i6.MultiPickerPage]
class MultiPickerRoute extends _i4.PageRouteInfo<void> {
  const MultiPickerRoute() : super(MultiPickerRoute.name, path: '');

  static const String name = 'MultiPickerRoute';
}
