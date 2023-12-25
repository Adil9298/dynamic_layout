import 'package:dynamic_layout/constants/constants.dart';
import 'package:flutter/material.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class WebLayout extends StatefulWidget {
  const WebLayout({Key? key}) : super(key: key);

  @override
  State<WebLayout> createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBgColor,
      appBar: myAppBarForWeb,
      body: Row(
        children: [
          //the drawer here
          myDrawer,

          //the rest of body
          Expanded(
            flex: 2,
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

          Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(itemCount: 10,itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                      color: const Color(0xff5D3587),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                );
              },),
                  )
                ],
              ),
          )

        ],
      ),
    );
  }
}
