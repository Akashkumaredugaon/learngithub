




import 'package:flutter/material.dart';

class AppSize{

  BuildContext context;

  AppSize(this.context);


  double get height{
    return MediaQuery.sizeOf(context).height;
  }
  double get width{
    return MediaQuery.sizeOf(context).width;
  }

}