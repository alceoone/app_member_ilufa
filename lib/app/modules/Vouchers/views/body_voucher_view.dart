import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BodyVoucherView extends GetView {
  const BodyVoucherView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Voucher Tersedia",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 10),
            ClipPath(
              clipper: CuponClipper(),
              child: Container(
                height: 150,
                width: double.infinity,
                alignment: Alignment.center,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CuponClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0);

    final radius = size.height * .065;

    Path holePath = Path();

    // for (int i = 1; i <= 4; i++) {
    //   holePath.addOval(
    //     Rect.fromCircle(
    //       center: Offset(0, (size.height * .2) * i),
    //       radius: radius,
    //     ),
    //   );
    // }
    for (int i = 1; i <= 4; i++) {
      holePath.addOval(
        Rect.fromCircle(
          center: Offset(size.width, (size.height * .2) * i),
          radius: radius,
        ),
      );
    }

    return Path.combine(PathOperation.difference, path, holePath);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
