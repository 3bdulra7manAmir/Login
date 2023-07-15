import 'package:flutter/material.dart';

//==========================================================================================//
Widget defaultButton({
  required String txt,
  required double width,
  //required double height,
  required Color color,
  required Function? Function() function,
}) => 

Container(
  width: width,
  //height: 10.0,
  color: color,
  
  child: MaterialButton(
  onPressed: function,
  child: Text(txt.toUpperCase(),
  style: const TextStyle(color: Colors.white),
  ),
  ),
);

//==========================================================================================//

Widget defaultTextFormField({
  required TextEditingController controller,
  required TextInputType keyboardType,
  required Function? Function() onFieldSubmitted,
  //required Function? Function() validate,
  //required InputDecoration decoration,
  required String hintText,
  required String labelText,
  required IconData prefixIcon,
  IconData? suffix,
  bool isPassword = false,
}) =>

TextFormField(
  controller: controller,
  keyboardType: keyboardType,
  //onFieldSubmitted: (value) {print(value);},
  //onChanged: ( (value)      {print(value);}),
  //validator: validate,
  obscureText: isPassword,
  decoration: InputDecoration(
  hintText: hintText,
  labelText: labelText,
  prefixIcon: Icon(prefixIcon),
  suffixIcon: suffix != null ? Icon(suffix) : null, //or just Icon(suffix) directly
  border: const OutlineInputBorder(),
    ),
);

//==========================================================================================//

