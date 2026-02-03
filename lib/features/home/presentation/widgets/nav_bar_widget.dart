import 'package:artefacta_app/core/utils/app_color/app_color.dart';
import 'package:artefacta_app/features/cart/presentation/view/cart_view.dart';
import 'package:artefacta_app/features/home/presentation/view/home_view.dart';
import 'package:artefacta_app/features/profile/presentation/view/profile_view.dart';
import 'package:artefacta_app/features/search/presentation/view/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class NavBarWidget extends StatelessWidget {
  NavBarWidget({super.key});

  final PersistentTabController _controller = PersistentTabController();

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style1,
      backgroundColor: Colors.transparent,
      navBarHeight: 60,
      padding: EdgeInsets.all(8.0),
      bottomScreenMargin: 0,
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return const [HomeView(), CartView(), SearchView(), ProfileView()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(
        CupertinoIcons.house_fill,
        color: AppColor.lightOrange, // active
      ),
      inactiveIcon: const Icon(
        CupertinoIcons.house,
        color: AppColor.primaryColor, // inactive
      ),
    ),

    PersistentBottomNavBarItem(
      icon: Icon(Icons.shopping_cart, color: AppColor.lightOrange),
      inactiveIcon: const Icon(
       CupertinoIcons.shopping_cart,
        color: AppColor.primaryColor,
      ),
    ),

    PersistentBottomNavBarItem(
      icon: Icon(
        CupertinoIcons.search_circle_fill,
        color: AppColor.lightOrange,
      ),
      inactiveIcon: const Icon(
        CupertinoIcons.search,
        color: AppColor.primaryColor,
      ),
    ),

    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.person_crop_circle, color: AppColor.lightOrange),
      inactiveIcon: const Icon(
        CupertinoIcons.person,
        color: AppColor.primaryColor,
      ),
    ),
  ];
}
