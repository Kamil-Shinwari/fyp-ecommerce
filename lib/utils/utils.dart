import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {

  static void fieldFocusChanged(
    BuildContext context,
    FocusNode current,
    FocusNode nextfocus,
  ){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextfocus);
    
  }
  static void ShowToastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );

    

  }

  static void showFlushbar(String message,BuildContext  context){
    Flushbar(
      message: message,
      backgroundColor: Colors.red,
      messageColor: Colors.black,
      messageSize: 20,
      duration: Duration(seconds: 3),
      reverseAnimationCurve: Curves.easeInOut,
      icon: Icon(Icons.error),
      positionOffset: 20,
      flushbarPosition: FlushbarPosition.TOP,
    )..show(context);
  }
}
