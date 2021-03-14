import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_styles_app/flutterStylesApp/auth/login.dart';
import 'package:flutter_styles_app/functions/appRotationController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    portraitModeOnly();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(4294719747,{50: Color( 0xffffebe6 )
          , 100: Color( 0xfffed7cd )
          , 200: Color( 0xfffeb09a )
          , 300: Color( 0xfffd8868 )
          , 400: Color( 0xfffd6135 )
          , 500: Color( 0xfffc3903 )
          , 600: Color( 0xffca2e02 )
          , 700: Color( 0xff972202 )
          , 800: Color( 0xff651701 )
          , 900: Color( 0xff320b01 )
        }),
        brightness: Brightness.light,
        primaryColor: Color( 0xfffc3903 ),
        primaryColorBrightness: Brightness.dark,
        primaryColorLight: Color( 0xfffed7cd ),
        primaryColorDark: Color( 0xff972202 ),
        accentColor: Color( 0xfffc3903 ),
        accentColorBrightness: Brightness.dark,
        canvasColor: Color( 0xfffafafa ),
        scaffoldBackgroundColor: Color( 0xfffed7cd ),
        bottomAppBarColor: Color( 0xffffffff ),
        cardColor: Color( 0xffffffff ),
        dividerColor: Color( 0x1f000000 ),
        highlightColor: Color( 0x66bcbcbc ),
        splashColor: Color( 0x66c8c8c8 ),
        selectedRowColor: Color( 0xfff5f5f5 ),
        unselectedWidgetColor: Color( 0x8a000000 ),
        disabledColor: Color( 0x61000000 ),
        buttonColor: Color( 0xffe0e0e0 ),
        toggleableActiveColor: Color( 0xffca2e02 ),
        secondaryHeaderColor: Color( 0xffffebe6 ),
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: Color( 0xfffeb09a ),
          cursorColor: Color( 0xff4285f4 ),
          selectionHandleColor: Color( 0xfffd8868 ),
        ),
        backgroundColor: Color( 0xfffeb09a ),
        dialogBackgroundColor: Color( 0xffffffff ),
        indicatorColor: Color( 0xfffc3903 ),
        hintColor: Color( 0x8a000000 ),
        errorColor: Color( 0xffd32f2f ),
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.normal,
          minWidth: 88,
          height: 36,
          padding: EdgeInsets.only(top:0,bottom:0,left:16, right:16),
          shape:     RoundedRectangleBorder(
            side: BorderSide(color: Color( 0xff000000 ), width: 0, style: BorderStyle.none, ),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          )
          ,
          alignedDropdown: false ,
          buttonColor: Color( 0xffff4d1c ),
          disabledColor: Color( 0x61000000 ),
          highlightColor: Color( 0x29000000 ),
          splashColor: Color( 0x1f000000 ),
          focusColor: Color( 0x1f000000 ),
          hoverColor: Color( 0x0a000000 ),
          colorScheme: ColorScheme(
            primary: Color( 0xfffc3903 ),
            primaryVariant: Color( 0xff972202 ),
            secondary: Color( 0xfffc3903 ),
            secondaryVariant: Color( 0xff972202 ),
            surface: Color( 0xffffffff ),
            background: Color( 0xfffeb09a ),
            error: Color( 0xffd32f2f ),
            onPrimary: Color( 0xffffffff ),
            onSecondary: Color( 0xffffffff ),
            onSurface: Color( 0xff000000 ),
            onBackground: Color( 0xffffffff ),
            onError: Color( 0xffffffff ),
            brightness: Brightness.light,
          ),
        ),
      ),
      home: Login(),
    );
  }
}


