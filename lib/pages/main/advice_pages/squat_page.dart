//SQUAT YOUTUBE ID = vWxv-iflkoo\
import 'package:calcal/reuse.dart';
import 'package:calcal/values.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class squat_page extends StatelessWidget {
  const squat_page({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'vWxv-iflkoo',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('SQUAT'),
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
                        'ท่าสควอชแบบพื้นฐาน (Basic Squat)',
                        style: TextStyle(
                          fontSize: sizes.bigfont - 3,
                        ),
                      ),
                      Text(
                        '\n1. กางขาสองข้าง ให้อยู่ในระยะช่วงหัวไหล่\n2.ย่อเข่าลง ย่อเข่า ไม่ควรให้หัวเข่าเกินปลายเท้า\n3. ย่อลงไปให้ได้มุมเข่า90องศาโดยสามารถยื่น แขนตรงไปข้างหน้าเพื่อให้ทรงตัวได้ง่ายขึ้น\n4. ขณะย่อตัว ควรเกร็งหน้าท้อง และใช้ส้นเท้าเป็นจุดรองรับน้ำหนัก\n5. จากนั้นยืดตัวขึ้น นับเป็น 1 ครั้ง',
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
