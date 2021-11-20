import'package:flutter/material.dart';
import 'package:untitled/First_screen.dart';


class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfffffcfc),
    body:Column(
      children:[
        Container(

                  margin:EdgeInsets.only(top:15,left:75,right:75,bottom:0),
                  child:Image(
                    image:AssetImage('assets/images/iCraveClearLogo.png'),

                  )),
        Container(
                  margin:EdgeInsets.only(bottom:0,right:10,left:10),
                  child: Column(
                    children:[
                      Text(
                        'iCrave',
                        style: TextStyle(
                          fontSize:66,
                          fontFamily:'Payton One',


                            ),

                            )
                        ],
                      ),
                    ),
        Container(
          margin: EdgeInsets.only(left:35,right:35,bottom:20,top:12),
          child: TextField(
            obscureText: false,
            decoration: InputDecoration(
                  border: UnderlineInputBorder(

             borderRadius: BorderRadius.circular(10),
                  ),
                   filled: true,
                   fillColor: Colors.white,

                   labelText:'Email',
            )


          ),
        ),
        ElevatedButton(
          child:Text('Login',
           style: TextStyle( fontSize: 20),),
            style: ElevatedButton.styleFrom(shape: StadiumBorder()),

          onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder:(context)=> FirstScreen()),);
             }
      )
                  ],
                ),

    );


  }
}
