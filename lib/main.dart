import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_empty_state_ui/utils/fade_animation.dart';
import 'package:flutter_empty_state_ui/utils/route_animation.dart';
import 'package:flutter_empty_state_ui/utils/systemUI.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: ((settings) {
        return RouteAnimation.slide(settings, const MyApp());
      }),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //
  // @afifcodes
  // afifcodes.vercel.app/flutter
  //

  @override
  Widget build(BuildContext context) {
    systemUI();
    return Scaffold(
        backgroundColor: const Color(0xffDEF7E5),
        extendBodyBehindAppBar: true,
        body: Container(
          padding: const EdgeInsets.all(24),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FadeAnimation(delay: 0, child: Image.asset('assets/1.png')),
              const SizedBox(
                height: 24,
              ),
              FadeAnimation(
                delay: 200,
                child: Text('Page Not Found',
                    style: GoogleFonts.manrope(
                        letterSpacing: -1,
                        fontWeight: FontWeight.w800,
                        fontSize: 24)),
              ),
              const SizedBox(
                height: 8,
              ),
              FadeAnimation(
                delay: 300,
                child: Text('Something went wrong',
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500,
                    )),
              ),
              const SizedBox(
                height: 48,
              ),
              FadeAnimation(
                delay: 600,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 24),
                    decoration: BoxDecoration(
                        color: const Color(0xff263238),
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      'Try Again',
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w700, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
