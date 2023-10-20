import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:money_flow/exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;
  List<Widget> pages = [
    // DailyPage(),
    DashboardScreen(),
    OrderList(),
    ProductList(),
    ProfileScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
  // void showOrder() {
  //   final DashboardScreen orderDialog = new DashboardScreen();
  //   orderDialog

  // }
  // final DashboardScreen order = DashboardScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
      bottomNavigationBar: getFooter(),
      floatingActionButton: SafeArea(
        child: SizedBox(
          child: FloatingActionButton(
            backgroundColor: Theme.of(context).primaryColorDark,
            onPressed: () {
              // order.
              // DashboardScreen.showOrderDialog();
              showDialog(context: context, builder: (context) => Order());
            },
            child: Icon(
              Icons.add,
              size: 20,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  Widget getFooter() {
    List<IconData> iconItems = [
      CupertinoIcons.home,
      CupertinoIcons.doc_plaintext,
      Icons.shopify_sharp,
      CupertinoIcons.person,
      // CupertinoIcons.settings
    ];
    return AnimatedBottomNavigationBar(
      backgroundColor: Colors.white,
      onTap: (index) {
        setTabs(index);
      },
      icons: iconItems,
      splashColor: Theme.of(context).primaryColor,
      inactiveColor: Colors.black.withOpacity(0.5),
      gapLocation: GapLocation.center,
      activeIndex: pageIndex,
      notchSmoothness: NotchSmoothness.softEdge,
      iconSize: 25,
      elevation: 3,
    );
  }

  setTabs(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
