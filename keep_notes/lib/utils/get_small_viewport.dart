import 'package:flutter/material.dart';

bool isSmallPort(BuildContext context) {
  if (MediaQuery.sizeOf(context).width < 499) {
    return true;
  } else {
    return false;
  }
}
