import 'package:auto_route/auto_route.dart';
import 'package:image_server/src/ImageUplaod/pages/image_upload.page.dart';
import 'package:image_server/src/ImageUplaod/pages/milti_picker.page.dart';

const imageTab = AutoRoute(
    path: 'image',
    page: EmptyRouterPage,
    name: 'ImageTab',
    children: [
      AutoRoute(path: '', page: ImageUploadsPage),
      AutoRoute(path: '', page: MultiPickerPage),
    ]);
