import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/view/screen/loging_screen.dart';
import 'package:newsapp/view/screen/signUp_screen.dart';

import '../utils/app_widget/app_widget.dart';
import '../utils/colors.dart';
import '../utils/style/text_styles.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    
    var auth=AppWidgets(context);
    var appTextStyle=AppTextStyle();
    return Scaffold(
      
      body:Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: appBackgroundColors
        ),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           auth.appSizeBoxView(height: auth.getHeight/4),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [

             auth.appSizeBoxView(width: auth.getWidth/3),
               auth.appSizeBoxView(
                 width: auth.getWidth/2,
                 height:auth.getHeight/10 ,
                 child:Image.asset("asset/images/pixellogo.png"),
               ),

             ],
           ),
             auth.appSizeBoxView(height: auth.getHeight/30),
            auth.appTextView("PixelPro Digital",style: AppTextStyle().normalTextStyle(textWidth: 30,color: Colors.white)),
             auth.appSizeBoxView(height: auth.getHeight/20),
            auth.appButtonView(
                width: auth.getWidth/1.2,
                  height: auth.getHeight/13,

                   () {

                  auth.appNavigatorView((p0) => LoginScreen());

                    }, Text("Login",style: AppTextStyle().normalTextStyle(textWidth: 20,color: Colors.black),),

           ),
            auth.appSizeBoxView(height: auth.getHeight/40),
           auth.appContainerView(
             onTap: () {

               auth.appNavigatorView((p0) => SignUpScreen());

             },
               width: auth.getWidth/1.2, height: auth.getHeight/13,child: Text("Sign",style: AppTextStyle().normalTextStyle(textWidth: 20 ,color: Colors.white),

           )),
           auth.appSizeBoxView(height: auth.getHeight/7),

           auth.appTextView("Continue as a guest",style: AppTextStyle().normalTextStyle(color: Colors.white,textWidth: 12))



         ],
                ),
      ),
    );
  }
}
