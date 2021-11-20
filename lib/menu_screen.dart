
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';


class MenuScreen extends StatefulWidget {

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  StreamController<int> selected = StreamController<int>();
  @override
  void dispose() {
    selected.close();
    super.dispose();}

  Widget build(BuildContext context) {

    final items = <String>[
      'Mexican Food',
      'Italian Food',
      'Junk Food',
      'Healthy Option',
      'Korean Food',
      'Japanese Food',
      'Chinese Food ',
      'Indian Food',
    ];

    return Scaffold(
      backgroundColor: Color(0xfffffcfc),
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar( leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
            centerTitle: true,
            backgroundColor: Color(0xfffffcfc),
            title: Text('iCrave',
              style: TextStyle(
                color: Color(0xFF212121),
                fontSize: 28,
                fontFamily:'Payton One',
              ), ),)),
          body:GestureDetector (
              onTap: () {
                setState(() {
                  selected.add(
                  Fortune.randomInt(0, items.length),

                  );
                });
              },
              child: Column(
                children:[
                  Expanded(
                    flex:2,
                    child:FortuneWheel(
                   selected: selected.stream,
                   items: [
                   for (var it in items) FortuneItem(child: Text(it)),
                     ],),),
                       ],
                         ),),

                      );

      }

}
