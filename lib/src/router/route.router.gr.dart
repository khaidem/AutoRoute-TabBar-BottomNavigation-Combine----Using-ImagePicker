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
import 'package:flutter/material.dart' as _i5;

import '../ImageUplaod/pages/image_upload.page.dart' as _i2;
import '../ImageUplaod/pages/milti_picker.page.dart' as _i3;
import 'tab_button.router.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    RootTabRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.RootTabPage());
    },
    ImageUploadsRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ImageUploadsPage());
    },
    MultiPickerRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.MultiPickerPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(RootTabRoute.name, path: '/', children: [
          _i4.RouteConfig(ImageUploadsRoute.name,
              path: 'image-uploads-page', parent: RootTabRoute.name),
          _i4.RouteConfig(MultiPickerRoute.name,
              path: 'multi-picker-page', parent: RootTabRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.RootTabPage]
class RootTabRoute extends _i4.PageRouteInfo<void> {
  const RootTabRoute({List<_i4.PageRouteInfo>? children})
      : super(RootTabRoute.name, path: '/', initialChildren: children);

  static const String name = 'RootTabRoute';
}

/// generated route for
/// [_i2.ImageUploadsPage]
class ImageUploadsRoute extends _i4.PageRouteInfo<void> {
  const ImageUploadsRoute()
      : super(ImageUploadsRoute.name, path: 'image-uploads-page');

  static const String name = 'ImageUploadsRoute';
}

/// generated route for
/// [_i3.MultiPickerPage]
class MultiPickerRoute extends _i4.PageRouteInfo<void> {
  const MultiPickerRoute()
      : super(MultiPickerRoute.name, path: 'multi-picker-page');

  static const String name = 'MultiPickerRoute';
}
