import 'package:flutter/material.dart';
import 'package:newsapp/view/screen/loging_screen.dart';
import '../utils/app_widget/app_widget.dart';
import '../utils/colors.dart';
import '../utils/style/text_styles.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  @override
  Widget build(BuildContext context) {

    var auth=AppWidgets(context);
    return  Scaffold(
      body: Container(
        width:double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient:appBackgroundColors
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                auth.appSizeBoxView(height: auth.getHeight/8),
                auth.appTextView("    Create Account \n to get started now!",style: AppTextStyle().normalTextStyle(textWidth: 30,color: Colors.white)),
                auth.appSizeBoxView(height: auth.getHeight/30),
                auth.appTextFieldView("Email Address"),
                auth.appSizeBoxView(height: auth.getHeight/30),
                auth.appTextFieldView("Email Password"),
                auth.appSizeBoxView(height: auth.getHeight/50),
                auth.appTextFieldView("Confirm Password"),
                // auth.appSizeBoxView(height: auth.getHeight/45),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //
                //
                //     auth.appTextView("Forgot Password?",style: AppTextStyle().normalTextStyle(color: Colors.white,textWidth: 15))
                //   ],
                // ),
                auth.appSizeBoxView(height: auth.getHeight/25),
                auth.appButtonView(
                  width: auth.getWidth/1,
                  height: auth.getHeight/13,

                      () {
                  }, Text("Sign Up ",style: AppTextStyle().normalTextStyle(textWidth: 15,color: Colors.black),),

                ),
                auth.appSizeBoxView(height: auth.getHeight/25),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: auth.appDividerView(thickness: 1.5),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: auth.appTextView("Or Sign Up with",style: AppTextStyle().normalTextStyle(color: Colors.white,textWidth: 15)),
                      ),
                      Expanded(
                        child: auth.appDividerView(thickness: 1.6),
                      ),
                    ],
                  ),
                ),
                auth.appSizeBoxView(height: auth.getHeight/30),
                Row(
                  children: [
                    Expanded(child: auth.appContainerView(
                      radius: 10,
                      color: Colors.white,
                      width: auth.getWidth/33,
                      height: auth.getHeight/13,
                      child: Image.asset("asset/images/googleicon.png",width: auth.getHeight/20,),

                    )),
                    Expanded(child: auth.appContainerView(
                      radius: 10,
                      color: Colors.white,
                      width: auth.getWidth/33,
                      height: auth.getHeight/13,
                      child: Image.asset("asset/images/facebookicon.png",width: auth.getHeight/20,),

                    ))
                  ],
                ),
                auth.appSizeBoxView(height: auth.getHeight/20),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      auth.appTextView("Already  Have an account? "),
                      InkWell(
                          onTap: () {
                           auth.appNavigatorView((p0) => LoginScreen());
                          },
                          child: auth.appTextView("Login Now",style: AppTextStyle().normalTextStyle(color: Colors.white,textWidth: 14)
                          ))
                    ],
                  ),
                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}
