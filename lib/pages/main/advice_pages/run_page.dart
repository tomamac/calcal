//RUN YOUTUBE ID = INvzpektISM
import 'package:calcal/reuse.dart';
import 'package:calcal/values.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class run_page extends StatelessWidget {
  const run_page({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'INvzpektISM',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('RUNNING'),
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
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: palette.textbgColor,
                  ),
                  child: Column(
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        'ท่าวิ่งที่ถูกต้อง วิ่งอย่างไร\n(Running)',
                        style: TextStyle(
                          fontSize: sizes.bigfont - 5,
                        ),
                      ),
                      Text(
                        '\n1. สายตามองไปข้างหน้า\n\n2. ไม่เกร็งบ่าไหล่\n\n3. ให้ความสำคัญกับแกนกลางลำตัว\n\n4. แกว่งแขนและกำมือหลวมๆ ขณะวิ่ง\n\n5. การลงเท้าวิ่งที่ถูกต้อง และก้าวในท่าที่เหมาะสม\n\n6. วิธีหายใจตอนวิ่ง หายใจให้ถูกจังหวะ',
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
