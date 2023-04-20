import 'package:flutter/material.dart';
import 'package:speedtest/dassboard.dart';
import 'package:speedtest/search.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController =
      PageController(keepPage: true, initialPage: 0);
//bottum navigation bar start
  int _cIndex = 0;

  // void _incrementTab(index) {
  //   setState(() {
  //     _cIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _cIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xffA456DD),
          selectedFontSize: 18,
          onTap: (int index) {
            this.setState(() {
              _pageController?.jumpToPage(index);
              this._cIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Search'
                // title: new Text('Power')
                ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list_alt_outlined,
                ),
                label: 'Order'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_outlined,
                ),
                label: 'Profile'
                // title: new Text('Power')
                ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: new FloatingActionButton(
          backgroundColor: Color(0xffA456DD),
          onPressed: () {},
          child: new Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
        ),

        //bottum navigation bar end

        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                "images/notification-bing.png",
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),
        body: PageView(
          controller: _pageController,
          children: [
            Center(
              child: Dassboard(),
            ),
            Search()
          ],
        ));
  }
}
