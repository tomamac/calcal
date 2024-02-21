//PLANK YOUTUBE ID = 39vwP1_1nNo
import 'package:calcal/reuse.dart';
import 'package:calcal/values.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class plank_page extends StatelessWidget {
  const plank_page({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: '39vwP1_1nNo',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('PLANKING'),
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
                        'Plank ท่าออกกำลังกายง่าย ๆ ที่ได้หลากคุณประโยชน์\n(Planking)',
                        style: TextStyle(
                          fontSize: sizes.bigfont - 10,
                        ),
                      ),
                      Text(
                        textAlign: TextAlign.start,
                        '\n1. Plank ปลายแขน\n\n2. Plank แขนตรง\n\n3. Plank ด้านข้างแบบงอขา\n\n4. Plank ขาข้างเดียว\n\n5. Plank งอเข่าสลับข้าง\n\n6. Plank แตะไหล่',
                        style: TextStyle(
                          fontSize: sizes.smallfont - 2.5,
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
