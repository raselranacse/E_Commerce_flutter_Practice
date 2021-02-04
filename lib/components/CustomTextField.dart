import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  String hintText;
  double radius;
  double padding;
  Color color;
   CustomTextField({
    Key key,
     @required this.hintText,
     this.radius,
     this.padding,
     this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextField(

      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.transparent),
              borderRadius:
              BorderRadius.all(Radius.circular(radius==null?30.0:radius))),
          focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Colors.transparent),
              borderRadius:
              BorderRadius.all(Radius.circular(radius==null?30.0:radius))),
          prefixIcon: Icon(Icons.search),
          hintText: "$hintText",
          filled: true,
          fillColor: color==null?Colors.grey[200]:color),
    );
  }
}
