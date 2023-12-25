
import 'package:flutter/material.dart';

var myBgColor = Colors.white;

var myAppBarForMob = AppBar(backgroundColor: Colors.white,iconTheme: const IconThemeData(color: Color(0xff5D3587),weight: 20),title: const Text('M O B I L E',style: TextStyle(color: Color(0xff5D3587),fontWeight: FontWeight.bold)),centerTitle: true,);
var myAppBarForTab = AppBar(backgroundColor: Colors.white,iconTheme: const IconThemeData(color: Color(0xff5D3587)),title: const Text('T A B L E T',style: TextStyle(color: Color(0xff5D3587),fontWeight: FontWeight.bold)),centerTitle: true,);
var myAppBarForWeb = AppBar(backgroundColor: Colors.white,iconTheme: const IconThemeData(color: Color(0xff5D3587)),title: const Text('D E S K T O P',style: TextStyle(color: Color(0xff5D3587),fontWeight: FontWeight.bold)),centerTitle: true,);

var myDrawer = const Drawer(
  backgroundColor: Colors.white,
  elevation: 0,
  width: 250,
  child: Column(
    children: [
      DrawerHeader(child: CircleAvatar(backgroundColor: Color(0xff5D3587),radius: 30,)),
      ListTile(
        leading: Icon(Icons.home,color: Colors.white),
        title: Text('D A S H B O A R D',style: TextStyle(color: Colors.white)),
        tileColor: Color(0xff5D3587),
      ),
      ListTile(
        leading: Icon(Icons.settings,color: Color(0xff5D3587)),
        title: Text('S E T T I N G S',style: TextStyle(color: Color(0xff5D3587))),
      ),
      ListTile(
        leading: Icon(Icons.chat,color: Color(0xff5D3587)),
        title: Text('M E S S A G E S',style: TextStyle(color: Color(0xff5D3587))),
      ),
      ListTile(
        leading: Icon(Icons.logout_outlined,color: Color(0xff5D3587)),
        title: Text('L O G O U T',style: TextStyle(color: Color(0xff5D3587))),
      ),
    ],
  ),
);