import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:image_server/src/router/app_router.gr.dart';

class RootTabPage extends StatelessWidget {
  const RootTabPage({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        ImageUploadTab(),
        MultiUploadTab(),
      ],
      builder: (context, child, controller) {
        // final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          drawer: Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(' Drawer'),
                    )
                  ],
                ),
              ],
            ),
          ),

          appBar: AppBar(
            title: Text(context.topRoute.name),
            leading: const AutoLeadingButton(),
            bottom: TabBar(
              controller: controller,
              tabs: const [
                Tab(text: '1', icon: Icon(Icons.home)),
                Tab(text: '2', icon: Icon(Icons.person)),
                // Tab(text: '3', icon: Icon(Icons.menu)),
              ],
            ),
          ),
          body: child,

          /// ****************BottomNavigationBar***********///

          // bottomNavigationBar: buildBottomNav(context, context.tabsRouter),
        );
      },
    );
  }

  // Widget buildBottomNav(BuildContext context, TabsRouter tabsRouter) {
  //   return BottomNavigationBar(
  //     currentIndex: tabsRouter.activeIndex,
  //     onTap: tabsRouter.setActiveIndex,
  //     items: const [
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.source),
  //         label: 'Books',
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.person),
  //         label: 'Profile',
  //       ),
  //       // BottomNavigationBarItem(
  //       //   icon: Icon(Icons.settings),
  //       //   label: 'Settings',
  //       // ),
  //     ],
  //   );
  // }
}

class BottomNavigationPage extends StatelessWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        routes: const [
          RootTabRouter(),
          MenuRoute(),
          NewUserRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                  label: 'Users', icon: Icon(Icons.offline_bolt)),
              BottomNavigationBarItem(
                  label: 'Posts', icon: Icon(Icons.arrow_back)),
              BottomNavigationBarItem(
                  label: 'Settings', icon: Icon(Icons.menu)),
            ],
          );
        });
  }
}
