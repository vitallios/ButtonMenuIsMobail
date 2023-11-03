import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wewew/bottom_item_routs.dart';
import 'package:wewew/pages/cart_page.dart';
import 'package:wewew/pages/home_page.dart';
import 'package:wewew/pages/list_page.dart';
import 'package:wewew/pages/personal_page.dart';
import 'package:wewew/provaider/mainscreen_provaider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomePage(),
    ListPage(),
    PersonalPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: pageList[mainScreenNotifier.pageIndex],
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottomItemRout(
                    onTap: () {
                      mainScreenNotifier.pageIndex = 0;
                    },
                    icon: Icons.home,
                  ),
                  BottomItemRout(
                    onTap: () {
                      mainScreenNotifier.pageIndex = 1;
                    },
                    icon: Icons.list,
                  ),
                  BottomItemRout(
                    onTap: () {
                      mainScreenNotifier.pageIndex = 2;
                    },
                    icon: Icons.person,
                  ),
                  BottomItemRout(
                    onTap: () {
                      mainScreenNotifier.pageIndex = 3;
                    },
                    icon: Icons.shopping_cart_outlined,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
