import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();/*Container(
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
