import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_app/core/theming/font_weight_helper.dart';


class TextStyles {
  static TextStyle fonts = GoogleFonts.montserrat();
  static  TextStyle font15bolddeeppurple=const TextStyle(
    fontSize: 20,
    fontWeight: FontWeightHelper.bold,
    color: Colors.deepPurple
  ) ;
   static  const TextStyle font16Meduim= TextStyle(
    fontSize: 16,
    fontWeight: FontWeightHelper.medium,
  ) ;
 static  const TextStyle font53Bold= TextStyle(
    fontSize: 53,
    fontWeight: FontWeightHelper.bold,
  ) ;
 
}
