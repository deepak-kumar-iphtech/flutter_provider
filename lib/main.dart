import 'package:flutter/material.dart';
import 'package:flutter_application/mainscreens/home.dart';
import 'package:flutter_application/pages/first.dart';
import 'package:flutter_application/pages/list_provider.dart';
import 'package:flutter_application/pages/practice.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumberList()),
        ChangeNotifierProvider(create: (context) => NumberList2()),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
            fontFamily: GoogleFonts.lato().fontFamily,
            //useMaterial3: true,
          ),
          home: Home()
          //const Practice(),
          //     const MyHomePage(
          //   title: "Practice Home Page",
          // ),
          ),
    );
  }
}
