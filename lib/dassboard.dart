import 'package:flutter/material.dart';

class Dassboard extends StatefulWidget {
  const Dassboard({super.key});

  @override
  State<Dassboard> createState() => _DassboardState();
}

class _DassboardState extends State<Dassboard> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 16,
              ),
              Row(
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
                            )
                            // prefixIcon: Image.asset(
                            //   "search-normal.png",
                            //   // scale: 0.5,
                            //   height: 0,
                            //   width: 5,
                            // ),
                            ),
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
              SizedBox(
                height: 20,
              ),
              Container(
                height: 140,
                child: ListView.separated(
                  itemCount: firstlist.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          "${firstlist[index]}",
                        ),
                      ),
                      //if (index == 1)
                      Positioned(
                        top: 30,
                        left: 10,
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            // maxLines: 3,
                            "Find best\nBeauty\nProduct.",
                            style: TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ]);
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 12,
                  ),
                ),
              ),
              Container(
                height: 55,
                child: ListView.separated(
                  padding: EdgeInsets.all(9),
                  itemCount: secondlist.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Color(0xffE0E0E0)),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '${secondlist[index]}',
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 10,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'RECOMMENDED',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 168,
                child: ListView.separated(
                  itemCount: thirdlist.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((BuildContext context, int index) {
                    return Container(
                      width: 128,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffF9F9FB)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              "${thirdlist[index]}",
                              width: 128,
                              height: 88,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              '${text1[index]}',
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xff001C33),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      '${text2[index]}',
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color(0xffA2A2A3),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      '${price[index]}',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff001C33),
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 22,
                              ),
                              FloatingActionButton.small(
                                elevation: 0,
                                onPressed: (() {}),
                                backgroundColor: Color(0xffEEEEF0),
                                child: Icon(
                                  Icons.shopping_bag_outlined,
                                  color: Colors.black45,
                                  size: 26,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'POPULAR',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 164,
                child: ListView.separated(
                  itemCount: fourthlist.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          width: 208,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffF9F9FB)),
                          child: Row(children: [
                            Image.asset(
                              "${fourthlist[index]}",
                              width: 72,
                              height: 72,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${text3[index]}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff001C33),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '${text4[index]}',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xffA2A2A3),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '${text5[index]}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff001C33),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: 208,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffF9F9FB)),
                          child: Row(children: [
                            Image.asset(
                              "${fourthlist[index]}",
                              width: 72,
                              height: 72,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${text3[index]}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff001C33),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '${text4[index]}',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xffA2A2A3),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '${text5[index]}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff001C33),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
