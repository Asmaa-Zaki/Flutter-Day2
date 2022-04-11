import 'package:flutter/material.dart';
import 'dart:async';

class FormPage extends StatelessWidget
{
  TextEditingController name= new TextEditingController();
  TextEditingController password= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40,),
          Image.asset("images/login.png",height: 150),
          Container(
            height: 45,
            margin: EdgeInsets.only(top: 20,right: 20,left: 20),
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                labelText:  "Name",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Container(
            height: 45,
            margin: EdgeInsets.all(20),
            child: TextField(
              controller: password,
              decoration: InputDecoration(
                labelText:  "Password",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
         ButtonTheme(
           minWidth: 320,
           child: FlatButton(
             child: Text("Login"),
             color: Colors.black,
             textColor: Colors.white,
             onPressed: (){
                  showDialog(context: context,
                  builder: (BuildContext context)
                  {
                    var res=  AlertDialog(title: Text("login"), content: Text("Name: "+name.text +" "+"Password: "+ password.text));
                    name.clear();
                    password.clear();
                    return res;
                  });
             },
           ),
         )
          
        ],

      ),
    );
  }

}