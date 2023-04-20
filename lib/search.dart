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
