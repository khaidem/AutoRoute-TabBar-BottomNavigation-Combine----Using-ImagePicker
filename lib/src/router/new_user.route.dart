import 'package:auto_route/auto_route.dart';
import 'package:image_server/src/NewUser/pages/newuser.page.dart';

const newUserTab = AutoRoute(
  path: 'NewUser',
  page: NewUserPage,
  name: 'NewUserRoute',
);
