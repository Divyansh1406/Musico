import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int a)
  {
    final player = AudioPlayer();
    player.play(AssetSource("note$a.wav"));
  }
  Expanded buildkey(int snum,ButtonStyle ButtonStyle)
  {
    return Expanded(
      child: TextButton(
        onPressed: (){
          playsound(snum);
          //restart app fully first time
        },child: const Text(""),
        style: ButtonStyle
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(1,const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFFfbf8cc)))),
              buildkey(2,const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFFfde4cf)))),
              buildkey(3,const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFFffcfd2)))),
              buildkey(4,const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFFf1c0e8)))),
              buildkey(5,const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFFcfbaf0)))),
              buildkey(6,const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFFa3c4f3)))),
              buildkey(7,const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFF90dbf4)))),
            ],
          ),
          ),
        ),
    );
  }
}
