import 'package:auto_route/auto_route.dart';
import 'package:image_server/src/ImageUplaod/pages/image_upload.page.dart';
import 'package:image_server/src/ImageUplaod/pages/milti_picker.page.dart';
import 'package:image_server/src/router/tab_button.router.dart';

const imageTab = AutoRoute(
  page: RootTabPage,
  name: 'RootTabRouter',
  children: [
    AutoRoute(
      path: 'ImageUpload',
      page: EmptyRouterPage,
      name: 'ImageUploadTab',
      children: [
        AutoRoute(page: ImageUploadsPage, path: ''),
      ],
    ),
    AutoRoute(
      path: 'MultiUpload',
      page: EmptyRouterPage,
      name: 'MultiUploadTab',
      children: [
        AutoRoute(page: MultiPickerPage, path: ''),
      ],
    ),
  ],
);
