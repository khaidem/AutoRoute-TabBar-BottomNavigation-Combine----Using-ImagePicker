import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class RootTabPage extends StatelessWidget {
  const RootTabPage({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final tabsRouter = AutoTabsRouter.of(context);
    return AutoTabsRouter.tabBar(
      routes: const [],
      builder: (context, child, controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(context.topRoute.name),
            // leading: const AutoLeadingButton(),
            bottom: TabBar(
              controller: controller,
              tabs: const [
                Tab(text: '1', icon: Icon(Icons.home)),
                Tab(text: '2', icon: Icon(Icons.person)),
                Tab(text: '3', icon: Icon(Icons.menu)),
              ],
            ),
          ),
          body: child,

          /// ****************BottomNavigationBar***********///

          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                label: 'Images',
                icon: Icon(Icons.image),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(Icons.accessibility_new_rounded),
              ),
              BottomNavigationBarItem(
                label: 'Menu',
                icon: Icon(Icons.menu_book),
              ),
            ],
          ),
        );
      },
    );
  }
}
