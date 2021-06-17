import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/splash/view/splash_page.dart';

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          brightness: Brightness.light,
          textTheme: TextTheme(
            headline1: GoogleFonts.poppins(fontSize: 93, fontWeight: FontWeight.w300, letterSpacing: -1.5),
            headline2: GoogleFonts.poppins(fontSize: 58, fontWeight: FontWeight.w300, letterSpacing: -0.5),
            headline3: GoogleFonts.poppins(fontSize: 46, fontWeight: FontWeight.w400),
            headline4: GoogleFonts.poppins(fontSize: 33, fontWeight: FontWeight.w400, letterSpacing: 0.25),
            headline5: GoogleFonts.poppins(fontSize: 23, fontWeight: FontWeight.w400),
            headline6: GoogleFonts.poppins(fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15, color: Colors.black),
            subtitle1: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15),
            subtitle2: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
            bodyText1: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.5),
            bodyText2: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.25),
            button: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 1.25),
            caption: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
            overline: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
          ),
          iconTheme: IconThemeData(
            color: Colors.black87,
          ),
          actionsIconTheme: IconThemeData(
            color: Colors.black87,
          ),
        ),
        textTheme: TextTheme(
          headline1: GoogleFonts.firaSans(fontSize: 97, fontWeight: FontWeight.w300, letterSpacing: -1.5),
          headline2: GoogleFonts.firaSans(fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
          headline3: GoogleFonts.firaSans(fontSize: 48, fontWeight: FontWeight.w400),
          headline4: GoogleFonts.firaSans(fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
          headline5: GoogleFonts.firaSans(fontSize: 24, fontWeight: FontWeight.w400),
          headline6: GoogleFonts.firaSans(fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
          subtitle1: GoogleFonts.firaSans(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
          subtitle2: GoogleFonts.firaSans(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
          bodyText1: GoogleFonts.openSans(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
          bodyText2: GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
          button: GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
          caption: GoogleFonts.openSans(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
          overline: GoogleFonts.openSans(fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xFF364b68)),
            foregroundColor: MaterialStateProperty.all(Color(0xFFFFFFFF)),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0))),
            minimumSize: MaterialStateProperty.all(Size.fromHeight(48.0)),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xFF364b68)),
            foregroundColor: MaterialStateProperty.all(Color(0xFFFFFFFF)),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0))),
          ),
        ),
        dividerTheme: DividerThemeData(
          space: 0.0,
          thickness: 0.5,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
