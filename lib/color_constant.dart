import 'package:flutter/material.dart';

const primaryColor = Color(0xFF00ADEF);
const secondaryColor = Color(0xFF2A2D3E);
const backgroundColor = Color(0xFF212332);
const whiteColor = Color(0xFFFFFFFF);
const contactCardColor = Color(0xFFE3E3E3);
const checkMarkColor = Color(0xFF0066FF);
const lightBlue = Colors.lightBlueAccent;
const redColor = Colors.red;
const deepPurple = Colors.deepPurple;

const dividerColor = Color(0xFFEEEEEE);
const greycolor = Color.fromRGBO(217, 217, 217, 1);

const listTextPrimaryColor = Color(0xff000000);
const listTextSecondaryColor = Color(0xff2c2c2c);
const lightBlueColor = Colors.lightBlueAccent;
const whiteColor70 = Colors.white70;
const blueAccent = Colors.blueAccent;
const blackColor = Colors.black;
const blackColor12 = Colors.black12;
const blackColor54 = Colors.black54;
const blackColor26 = Colors.black26;
const greyColor = Colors.grey;
const transparentColor = Colors.transparent;
const borderColor = Color(0xFFEAEAEA);
const userEditProfileEmailTextColor = Color(0xFF5A5959);
const gradientColorPink = Color(0xFFE900FF);
const gradientColorBlue = Color(0xFF16E8FF);
const loginTextFieldBorderColor = Color(0x33FFFFFF);
const dropdownBackgroundColor = Color(0xFF424858);
const circleBackgroundColor = Color(0xFF141C2F);
const twoFactorAuthenticatrionTextColor = Color(0x58FFFFFF);
const editProfileDividerColor = Color(0x00FFFFFF);
const whiteColorForProfileEmail = Color(0x99FFFFFF);
const whiteColorForProfile = Color(0x80FFFFFF);
const whiteColorForProfileText = Color(0x85FFFFFF);
const greyColorSplashScreenLogo = Color(0xFF212121);
const purpleColor = Colors.purple;
const blueColor = Colors.blue;
const blueAccentColor = Colors.blueAccent;
const gradientDarkBlue = Color(0xFF355A76);
const gradientBlack = Color(0xFF222124);
const bottomBarBackgroundColor = Color(0x99000000);
const postTitleTextColor = whiteColor;
const postSubTitleTextColor = listTextSecondaryColor;
const textBackGroundContainer = Color(0xff3a3a3a);
const buttonColor = Color(0xFFE8DEF8);
const toggleSwitchColor = Color.fromRGBO(179, 207, 249, 1);

//home Bottom sheet

const cardBackgroundColor = Color(0xFFD9D9D9);
const buttonBackGroundColor = Color(0xFFE6E0E9);
const textFormFieldElementsColor = Color(0xFF6200EE);
const textFormFieldBackgroundColor = Color(0xFFE8DEF8);
const white70Color = Colors.white70;
const greenColor = Colors.green;
const whiteglobalColor = Colors.white;

//home Bottom sheet
const bottomSheetStartColor = gradientDarkBlue;
const bottomSheetEndColor = Color(0xFF211148);
const storyBgEndColor = Color(0x8c2727);
const chatScreenBackgroundColor = Color(0x171c31);
const chatScreenSecondBackgroundColor = Color(0x1c1434);
const cardColor = Color(0xFF13161A);
const backgroudColor = Color(0xFFECEFF1);
const GroupListingBackgroundColor = Color(0xFFD9D9D9);
const TileColor = Color(0xFFE6E0E9);
const textcolor = Color(0xFF000000);
const notCheckmarkcolor = Color(0xFFB7B8B9);
const groupSettingsColor = Color.fromRGBO(56, 69, 239, 1.0);

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
