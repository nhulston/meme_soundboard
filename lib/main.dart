import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
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
  late AudioPlayer audioPlayer;
  late AudioCache audioCache;
  @override
  Widget build(BuildContext context) {
    audioPlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: audioPlayer);

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
          SizedBox(height: height / 3),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                      playAudio("bruh.mp3");
                  },
                  child: Text(
                    'Bruh',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.architectsDaughter(
                      color: const Color(0xFFFED766),
                      fontSize: width / 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    playAudio("fart.mp3");
                  },
                  child: Text(
                    'Fart',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.architectsDaughter(
                      color: const Color(0xFFFED766),
                      fontSize: width / 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    playAudio("boom.mp3");
                  },
                  child: Text(
                    'Boom',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.architectsDaughter(
                      color: const Color(0xFFFED766),
                      fontSize: width / 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              playAudio("sheesh.mp3");
            },
            child: Text(
              'Sheesh',
              textAlign: TextAlign.center,
              style: GoogleFonts.architectsDaughter(
                color: const Color(0xFFFED766),
                fontSize: width / 16,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }

    void playRandomAudio() async {
        List<String> list = ["bruh.mp3", "fart.mp3", "boom.mp3"];

        int rand = Random().nextInt(list.length);

        await audioCache.play(list[rand], volume: 1);
    }

    void playAudio(String s) async {
        await audioCache.play(s, volume: 1);
    }
}
