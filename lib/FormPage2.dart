import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(FormPage2());
}

class FormPage2 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return SingleChildScrollView(
     child: Container(
       height: MediaQuery.of(context).size.height,
       decoration: BoxDecoration(
         gradient: LinearGradient
           (
           begin: AlignmentDirectional.bottomStart,
           end: AlignmentDirectional.topEnd,
           colors: [
             Colors.blue,
             Colors.blueAccent,
             Colors.redAccent,
             Colors.red
           ]
         )
       ),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.end,
         crossAxisAlignment: CrossAxisAlignment.end,
         children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Login", style: TextStyle(fontSize: 25, color: Colors.white),),
                    Image.asset("images/flower.png", height: 150,)
                  ],
                ),
              ),
             Container(
               height: 300,
               width: 300,
               padding: EdgeInsets.all(25),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
                 color: Colors.white60.withOpacity(.3),
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,

                 children: [
                   Text("User Name", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                   TextField(
                     decoration: InputDecoration(
                       labelText: "User Name"
                     ),
                     style: TextStyle(height: .1, fontSize: 13),
                   ),
                   SizedBox(height: 20,),
                   Text("Password", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                   TextField(
                     decoration: InputDecoration(
                         labelText: "Password"
                     ),
                       style: TextStyle(height: .1, fontSize: 13)
                   ),
                 ],
               ),
             )
         ],
       ),
     ),
   );
  }

}