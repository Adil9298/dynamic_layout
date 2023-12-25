import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget tabLayout;
  final Widget webLayout;
  const ResponsiveLayout({Key? key,required this.mobileLayout,required this.tabLayout,required this.webLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth < 500){
        return mobileLayout;
      }
      else if(constraints.maxWidth < 1100){
        return tabLayout;
      }
      else{
        return webLayout;
      }
    },);
  }
}
