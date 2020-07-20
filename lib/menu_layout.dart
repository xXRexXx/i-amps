//import 'dart:ffi';
//
//import 'package:flutter/material.dart';
//
//class MenuLayout extends StatefulWidget {
//  MenuLayout({Key key}) : super(key: key);
//
//  @override
//  _MenuLayoutState createState() => _MenuLayoutState();
//}
//
//class _MenuLayoutState extends State<MenuLayout> {
//
//  bool isCollapsed = true;
//  double screenWidth, screenHeight;
//  Duration duration = const Duration(milliseconds: 300);
//
//  @override
//  Widget build(BuildContext context) {
//    Size size = MediaQuery.of(context).size;
//    screenWidth = size.height;
//    screenHeight = size.width;
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('i-AMPs'),
//      ),
//      backgroundColor: Colors.blueAccent,
//      body: Stack(
//        children: <Widget>[
//          menu(context),
//          home(context),
//          // reports(context),
//          // prediction(context),
//          // settings(context),
//        ],
//      ),
//    );
//  }
//
//Widget menu(context) {
//  return Padding(
//    padding: EdgeInsets.only(left: 16.0),
//    child: Align(
//      alignment: Alignment.centerLeft,
//        child: Column(
//          mainAxisSize: MainAxisSize.min,
//          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Text(
//            'Home',
//            style: TextStyle(fontSize: 20),
//          ),
//          SizedBox(height: 10.0),
//          Text(
//            'Reports',
//            style: TextStyle(fontSize: 20),
//          ),
//          SizedBox(height: 10.0),
//          Text(
//            'Prediction',
//            style: TextStyle(fontSize: 20),
//          ),
//          SizedBox(height: 10.0),
//          Text(
//            'Settings',
//            style: TextStyle(fontSize: 20),
//          ),
//          SizedBox(height: 10.0),
//        ],
//      ),
//    ),
//  );
//}
//
//Widget home(context) {
//  return AnimatedPositioned(
//    duration: duration,
//    top: isCollapsed ? 0 : 0.2 * screenHeight,
//    bottom: isCollapsed ? 0 : -0.2 * screenWidth,
//    right: isCollapsed ? 0 : -0.6 * screenWidth,
//    left: isCollapsed ? 0 : -0.1 * screenWidth,
//      child: Material(
//      elevation: 8,
//      child: Container(
//        padding: EdgeInsets.fromLTRB(16.0, 48.0, 16.0, 0.0),
//        child: Column(
//          children: <Widget> [
//            Row(
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              mainAxisSize: MainAxisSize.max,
//              children: <Widget>[
//                InkWell(child: Icon(Icons.menu,), onTap: () {
//                  setState(() {
//                    isCollapsed = !isCollapsed;
//                  });
//                },),
//                Text('Home', style: TextStyle(fontSize: 20.0),),
//                Icon(Icons.settings,),
//              ],
//            ),
//          ],
//        ),
//      ),
//    ),
//  );
//}
//
//// Widget reports(context) {
////   return Scaffold();
//// }
//
//// Widget prediction(context) {
////   return Scaffold();
//// }
//
//// Widget settings(context) {
////   return Scaffold();
//// }
//
//}