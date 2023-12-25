import 'package:dynamic_layout/constants/constants.dart';
import 'package:dynamic_layout/util/my_box.dart';
import 'package:dynamic_layout/util/my_tile.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      appBar: myAppBarForMob,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return MyBox();
                  },
              ),
            ),
          ),


          Expanded(child: ListView.builder(itemCount: 5,itemBuilder: (context, index) {
            return MyTile();
          },))
        ],
      ),

    );
  }
}
