import 'package:flutter/material.dart';

import '../colors.dart';

class AppButtonStyle{

  ButtonStyle appButton({Color bgColor = appButtonColor}) =>
  ElevatedButton.styleFrom(backgroundColor: bgColor);

}