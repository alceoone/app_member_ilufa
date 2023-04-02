import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExchangeCoin extends StatefulWidget {
  const ExchangeCoin({super.key});

  @override
  State<ExchangeCoin> createState() => _ExchangeCoinState();
}

class _ExchangeCoinState extends State<ExchangeCoin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tukar Koin'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.circleQuestion,
              color: Colors.white,
              // size: 32.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.shareNodes,
              color: Colors.white,
              // size: 32.0,
            ),
          ),
        ],
        backgroundColor: Colors.deepOrange,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ClipPath(
              clipper: CuponClipper(),
              child: Container(
                // height: 100,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(2, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Image.asset("assets/icons/DISKON 10% feed.jpg"),
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Diskon 10%",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.deepOrange),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Tukarkan Poin dan dapatkan diskon 10% di Store Tertentu",
                                textAlign: TextAlign.justify,
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 2),
                                padding: EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                    "Berlaku 03-04-2023",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.grey[500]),
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 15),
                                margin: EdgeInsets.symmetric(vertical: 3),
                                child: Center(
                                  child: Text(
                                    'Selengkapnya',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey[600]),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: Colors.deepOrange,
                                  width: 0.5,
                                )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
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

    for (int i = 1; i <= 4; i++) {
      holePath.addOval(
        Rect.fromCircle(
          center: Offset(0, (size.height * .2) * i),
          radius: radius,
        ),
      );
    }
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
