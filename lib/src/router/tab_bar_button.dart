import 'package:auto_route/auto_route.dart';
import 'package:image_server/src/ImageUplaod/pages/image_upload.page.dart';
import 'package:image_server/src/ImageUplaod/pages/milti_picker.page.dart';
import 'package:image_server/src/router/tab_button.router.dart';

const tabBarButton = AutoRoute(page: RootTabPage, initial: true, children: [
  AutoRoute(
    page: ImageUploadsPage,
  ),
  AutoRoute(page: MultiPickerPage)
]);
