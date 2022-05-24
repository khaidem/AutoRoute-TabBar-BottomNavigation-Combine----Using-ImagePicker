import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:image_server/src/router/route.router.gr.dart';

class RootTabPage extends StatelessWidget {
  const RootTabPage({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        ImageUploadsRoute(),
        MultiPickerRoute(),
      ],
      builder: (context, child, controller) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(context.topRoute.name),
            leading: const AutoLeadingButton(),
            bottom: TabBar(
              controller: controller,
              tabs: const [
                Tab(text: '1', icon: Icon(Icons.abc)),
                Tab(text: '2', icon: Icon(Icons.abc)),
                Tab(text: '3', icon: Icon(Icons.abc)),
              ],
            ),
          ),
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                label: 'Books',
                icon: Icon(Icons.ac_unit_sharp),
              ),
              BottomNavigationBarItem(
                  label: 'Profile',
                  icon: Icon(Icons.accessibility_new_rounded)),
            ],
          ),
        );
      },
    );
  }
}
