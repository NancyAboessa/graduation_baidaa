import 'package:flutter/material.dart';

Widget defaultTextbuttom({
 required double width ,
 required String text,
  double radius =10.0,
  Color ?color,

  required Function function,
})=>  Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
    width: width,
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.rectangle,
      borderRadius:BorderRadius.circular(10.0),

    ),
    child: MaterialButton(child:Text(
        text,
        style: TextStyle(
          color:Colors.white,
      ) ,
    ),

      onPressed:function(),
  ),
  )
);





Widget defaultwhitebuttom({
  required double width ,
  required String text,
  double radius =10.0,



})=>Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
    width: width,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.white),
      shape: BoxShape.rectangle,
      borderRadius:BorderRadius.circular(10.0),
    ),

    child: TextFormField(
      keyboardType: TextInputType.emailAddress,


      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(
          color: Colors.grey,

        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
      ),
      maxLines: 1,
      style: TextStyle(
        color: Colors.black87,
      ),
      cursorColor: Colors.grey,
    ),
  ),
);
