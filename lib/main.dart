import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Meme Soundboard',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF474448),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'MEME SOUND BOARD',
            textAlign: TextAlign.center,
            style: GoogleFonts.architectsDaughter(
              color: const Color(0xFFFED766),
              fontSize: width / 8,
              fontWeight: FontWeight.w900,
            ),
          ),
          Center(
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.play_arrow,
                size: width / 4,
                color: const Color(0xFFFED766),
              ),
              onPressed: () {
                print("test");
              },
            ),
          ),
        ],
      ),
    );
  }
}
