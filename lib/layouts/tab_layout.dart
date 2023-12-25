import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class TabLayout extends StatefulWidget {
  const TabLayout({Key? key}) : super(key: key);

  @override
  State<TabLayout> createState() => _TabLayoutState();
}

class _TabLayoutState extends State<TabLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      appBar: myAppBarForTab,
      body: Row(
        children: [
          //drawer
           Drawer(
            backgroundColor: Colors.white,
            elevation: 0,
            width: 80,
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundColor: Color(0xff5D3587),
                ),
                const SizedBox(height: 30,),
                Container(
                  height: 50,
                  width: 100,
                  decoration: const BoxDecoration(
                    color:  Color(0xff5D3587),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                  ),
                  child:  const Icon(Icons.home,color: Colors.white),
                ),
                const SizedBox(
                  height: 50,
                  child:  Icon(Icons.chat,color: Color(0xff5D3587)),
                ),
                const SizedBox(
                  height: 50,
                  child:  Icon(Icons.settings,color: Color(0xff5D3587)),
                ),
                const SizedBox(
                  height: 50,
                  child:  Icon(Icons.logout,color: Color(0xff5D3587)),
                ),
              ],
            ),
          ),

          Expanded(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return const MyBox();
                      },
                    ),
                  ),
                ),


                Expanded(child: ListView.builder(itemCount: 5,itemBuilder: (context, index) {
                  return const MyTile();
                },))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
