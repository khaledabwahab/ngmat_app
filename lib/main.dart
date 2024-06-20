import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MusicWidget());
}

class MusicWidget extends StatelessWidget {
  const MusicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();

    void playSound() async {
      await player.play(AssetSource('music-1.mp3'));
    }

    void stopSound() async {
      await player.stop();
    }

    void pauseSound() async {
      await player.pause();
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('نغمات'),
        ),
        body: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
////////////////////////////////////////////////////////////////////////////////
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: playSound,
                  child: Row(
                    children: [
                      Icon(
                        Icons.music_note,
                      ),
                      Text(
                        'Play Sound',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: pauseSound,
                  child: Row(
                    children: [
                      Icon(
                        Icons.music_note,
                      ),
                      const Text('Pause Sound'),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: stopSound,
                  child: const Text(
                    'Stop Sound',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
///////////////////////////////////////////////////////////////////////////////
          ]),
        ),
      ),
    );
  }
}
