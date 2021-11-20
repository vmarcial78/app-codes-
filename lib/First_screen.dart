import'package:flutter/material.dart';
import 'package:untitled/Recipe_screen.dart';
import 'package:untitled/menu_screen.dart';
class FirstScreen extends StatefulWidget {


  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
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
      body:Column(
       children:[
         Container(
           height:120.0,
           width:450.0,
           margin: EdgeInsets.only(left:45,right:45,bottom:20,top:142),
           decoration: BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0.0,20.0),
           blurRadius:30.0,
           color:Colors.black12)]),

           child: ElevatedButton(
               child:Text('Recipes Ideas',
                 style: TextStyle( fontSize: 20),),
               style: ElevatedButton.styleFrom(
                   primary:Colors.purple,
                   shape: StadiumBorder()),

               onPressed: (){
                 Navigator.push(context,
                   MaterialPageRoute(builder:(context)=> RecipeScreen()),);
               }

           ),
         ),
         Container(
           height:120.0,
           width:450.0,
           margin: EdgeInsets.only(left:45,right:45,bottom:20,top:42),
           decoration: BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0.0,20.0),
               blurRadius:30.0,
               color:Colors.black12)]),
           child: ElevatedButton(
              child:Text('Spin the Wheel  ',
                style: TextStyle( fontSize: 20),),
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),


                onPressed: (){
               Navigator.push(context,
              MaterialPageRoute(builder:(context)=> MenuScreen()),);
              }
              ),
         ),
        ]
     )


    );
  }
}
