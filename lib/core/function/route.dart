import 'package:flutter/material.dart';

void gotoPushReplacement(context, Widget screen) {
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ));
}

void gotoPush(context, Widget screen) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ));
}

void goBack(context) {
  Navigator.pop(
    context,
  );
}
