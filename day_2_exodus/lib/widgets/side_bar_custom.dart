import 'package:day_2_exodus/core/global_resources.dart';
import 'package:day_2_exodus/providers/tab_provider.dart';
import 'package:day_2_exodus/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideBarCustom extends StatelessWidget {
  const SideBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TabProvider>(builder: (context, tabProvider, child) {
      return Container(
        color: Colors.white,
        width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: tabProvider.toggleSideBarVisibility,
                child: GlobalResources.menuIcon),
            MenuItem(
              icon: const Icon(Icons.circle),
              label: 'Portfolio',
              onTap: () => tabProvider.setPage(0),
              selected: (tabProvider.pageIndex == 0),
            ),
            MenuItem(
              icon: const Icon(Icons.money),
              label: 'Wallet',
              onTap: () => tabProvider.setPage(1),
              selected: (tabProvider.pageIndex == 1),
            ),
            MenuItem(
              icon: const Icon(Icons.arrow_forward_sharp),
              label: 'Exchange',
              onTap: () => tabProvider.setPage(2),
              selected: (tabProvider.pageIndex == 2),
            ),
          ],
        ),
      );
    });
  }
}
