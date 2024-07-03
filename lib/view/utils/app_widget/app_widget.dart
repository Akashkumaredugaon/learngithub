import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class AppWidgets{

  BuildContext context;

  AppWidgets(this.context);

  double get getHeight => MediaQuery.sizeOf(context).height;
  double get getWidth => MediaQuery.sizeOf(context).width;

 Widget appTextView( String text,{TextStyle? style}){
    return Text(text,style: style,);
  }

  Widget appSizeBoxView({double width=0.0, double height=0.0, Widget? child}){

   return SizedBox(
     width: width,
     height: height,
     child: child,
   );

  }

  Widget appButtonView(void Function()? onPressed,Widget text,{double width=0.0, double height=0.0}){

   return Container(
       width: width,
       height: height,
       child: ElevatedButton(
         style: ButtonStyle(
           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
             RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(10), // Adjust the value as needed
             ),
           ),
         ),
         onPressed: onPressed,
         child: text,
       )
   );


  }

  Widget appContainerView({double width=0.0, double height=0.0, Widget? child,Color? color,double radius=0.0,void Function()? onTap}){
   return InkWell(
     onTap:onTap,
     child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(
              width: 2,  // Adjust stroke width here
              color: Colors.white,
            ),

          ),
          child:Center(child:child,),
        ),

      ),
   );


  }
  Widget appTextFieldView(String hintText, {Widget? suffixIcon, bool obscureText = false,Widget? prefixIcon}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white70,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),
        contentPadding: EdgeInsets.all(15.0),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white, // Placeholder text color
          fontSize: 15.0,
        ),
      ),
    );
  }

  Widget appDividerView({double? thickness}){

   return Divider(
     thickness:thickness,
     color: Colors.white,

   );

  }

   Future<dynamic> appNavigatorView(Widget Function(BuildContext) builder) {

   return Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: builder),
    );
  }


}

extension MediaQuary on BuildContext{

  double get height{
    return MediaQuery.of(this).size.height.toDouble();
  }
  double get width{
    return MediaQuery.of(this).size.width.toDouble();
  }

}

