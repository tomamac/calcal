//SWIM YOUTUBE ID = vdZ7VKTrlJs
import 'package:calcal/reuse.dart';
import 'package:calcal/values.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class swim_page extends StatelessWidget {
  const swim_page({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'vdZ7VKTrlJs',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('SWIMMING'),
        backgroundColor: palette.tabbgColor,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            backgroundImg(),
            Column(
              children: [
                YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.amber,
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.amber,
                    handleColor: Colors.amberAccent,
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.topCenter,
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: palette.textbgColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        'ท่าว่ายน้ำช่วยลดน้ำหนัก\n(Swimming)',
                        style: TextStyle(
                          fontSize: sizes.bigfont - 3,
                        ),
                      ),
                      Text(
                        textAlign: TextAlign.start,
                        '\n1. ท่าฟรีสไตล์ 515 แคลอรี่\n\n2. ท่ากรรเชียง 545 แคลอรี่\n\n3. ท่ากบ 735 แคลอรี่\n\n4. ท่าผีเสื้อ 815 แคลอรี่',
                        style: TextStyle(
                          fontSize: sizes.smallfont,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
