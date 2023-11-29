import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/features/home/home_page.dart';

class FakeStoreApp extends StatelessWidget {
  const FakeStoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
          useMaterial3: true,
          textTheme: GoogleFonts.robotoTextTheme(),
        ),
        home: const HomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
