import 'package:day_2_exodus/core/global_resources.dart';
import 'package:day_2_exodus/pages/exchange_page.dart';
import 'package:day_2_exodus/pages/portfolio_page.dart';
import 'package:day_2_exodus/pages/wallet_page.dart';
import 'package:day_2_exodus/providers/tab_provider.dart';
import 'package:day_2_exodus/widgets/side_bar_custom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  final List<Widget> _pageList = const [
    PortfolioPage(),
    WalletPage(),
    ExchangePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => TabProvider())],
      child: MaterialApp(
        home: Scaffold(body: Consumer<TabProvider>(
          builder: (context, tabProvider, child) {
            return Container(
              color: Colors.grey[200],
              child: Stack(
                children: [
                  _pageList[tabProvider.pageIndex],
                  (tabProvider.showingSideBar == false)
                      ? GestureDetector(
                          onTap: tabProvider.toggleSideBarVisibility,
                          child: GlobalResources.menuIcon)
                      : const SizedBox.shrink(),
                  (tabProvider.showingSideBar)
                      ? const Align(
                          alignment: Alignment.centerLeft,
                          child: SideBarCustom())
                      : const SizedBox.shrink()
                ],
              ),
            );
          },
        )),
      ),
    );
  }
}
