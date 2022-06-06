import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
 String label_text;


 CustomTextField(this.label_text);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(left: 20,right: 20),
      child:
      TextFormField(
        decoration: InputDecoration(
            labelText: widget.label_text,
         labelStyle: TextStyle(
           color: Colors.pink,
           fontSize: 20,
           fontWeight: FontWeight.bold
         ),
         focusedBorder: UnderlineInputBorder(
           borderSide: BorderSide(
             color: Colors.pink,
             width: 2
           )
         )
        ),
      ),
    );
  }
}
