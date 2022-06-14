import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black45, spreadRadius: 2)],
      ),
      child: const CircleAvatar(
        backgroundColor: Colors.white,
        radius: 30.0,
        backgroundImage: AssetImage('assets/widget/fire.png'),
      ),
    );
    /*Container(
        decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.green,
          width: 5.0,
          style: BorderStyle.solid
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.elliptical(40.0, 10.0),
          bottomLeft: Radius.circular(20.0),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.red,
            offset: Offset(20.0, 10.0),
          )
        ],
        image: const DecorationImage(
          image: AssetImage('assets/images/JL-Logo-150.png'),
        )
      )
    );*/
  }

  void paint(Canvas canvas, Size size) {
    var path = Path();
    var myPaint = Paint();
    var center = Offset(size.width / 2, size.height / 2);

    myPaint.color = Color(0xff007AFF);

    path.addOval(Rect.fromCircle(center: center, radius: 50.0));

    canvas.drawShadow(path, Color(0xff000000), 3, true);
    canvas.drawPath(path, myPaint);
  }


}

class Painter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    double radius = 100.0;
    canvas.translate(size.width/2, size.height/2);
    Offset center = Offset(0.0, 0.0);
    // draw shadow first
    Path oval = Path()
      ..addOval(Rect.fromCircle(center: center, radius: radius+10));
    Paint shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.3)
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 50);
    canvas.drawPath(oval, shadowPaint);
    // draw circle
    Paint thumbPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, radius, thumbPaint);
  }

  @override
  bool shouldRepaint(Painter oldDelegate) {
    return false;
  }
}
