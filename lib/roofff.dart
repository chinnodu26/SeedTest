import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search bar'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 44,
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffFFFFFF),
                          hintText: 'Search..',
                          hintStyle: TextStyle(color: Colors.black45),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black38),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black38)),
                  child: Icon(Icons.qr_code_scanner_sharp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
      PageController(initialPage: 0, keepPage: true);

  List<String> firstlist = [
    'images/Rectangle.png',
    'images/Rectangle.png',
    'images/Rectangle.png',
  ];
  List<String> secondlist = [
    'Cream',
    'Moisturizers',
    'Lotion',
    'Serum',
    "Spray",
  ];
  List<String> thirdlist = [
    'images/Rectangle1.png',
    'images/Rectangle1.png',
    'images/Rectangle1.png',
  ];
  List<String> text1 = [
    'Givenchy Blossom',
    'Givenchy Blossom',
    'Givenchy Blossom',
  ];
  List<String> text2 = [
    'Givenchy',
    'Givenchy',
    'Givenchy',
  ];
  List<String> price = [
    '\$29.00',
    '\$29.00',
    '\$29.00',
  ];
  List<String> fourthlist = [
    'images/Rectangle2.png',
    'images/Rectangle3.png',
  ];
  List<String> text3 = [
    'Shade Palette',
    'Curology',
  ];
  List<String> text4 = [
    'Naked',
    'Curology',
  ];
  List<String> text5 = ['\$25.00', '\$20.00'];
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
          _pageController?.jumpToPage(index);
          this.setState(() {
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
        physics: NeverScrollableScrollPhysics(),
        children: [
          Center(
            child: Dassboard(
                firstlist: firstlist,
                secondlist: secondlist,
                thirdlist: thirdlist,
                text1: text1,
                text2: text2,
                price: price,
                fourthlist: fourthlist,
                text3: text3,
                text4: text4,
                text5: text5),
          ),
          Search(),
        ],
      ),
    );
  }
}
