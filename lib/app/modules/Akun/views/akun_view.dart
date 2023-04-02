import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Coin/views/coin_view.dart';
import '../controllers/akun_controller.dart';
import 'akun_body_view.dart';

class AkunView extends GetView<AkunController> {
  const AkunView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Member Eksekutif'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.gear,
              color: Colors.white,
              // size: 32.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.bell,
              color: Colors.white,
              // size: 32.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.envelope,
              color: Colors.white,
              // size: 32.0,
            ),
          ),
        ],
        backgroundColor: Colors.deepOrange,
        elevation: 0,
      ),
      body: AkunBodyView(),
      //   body: Column(
      //     children: [
      //       Container(
      //         child: Center(
      //           child: Column(
      //             children: [
      //               Stack(
      //                 children: [
      //                   ClipPath(
      //                     clipper: ClipPathClass(),
      //                     child: Container(
      //                       height: 210,
      //                       width: Get.width,
      //                       color: Colors.deepOrange,
      //                     ),
      //                   ),
      //                   Container(
      //                     margin: EdgeInsets.only(top: 5),
      //                     child: Column(
      //                       children: [
      //                         Row(
      //                           mainAxisAlignment: MainAxisAlignment.center,
      //                           children: [
      //                             Container(
      //                               height: 90,
      //                               width: 90,
      //                               decoration: const BoxDecoration(
      //                                 color: Colors.grey,
      //                                 shape: BoxShape.circle,
      //                                 image: DecorationImage(
      //                                     fit: BoxFit.cover,
      //                                     image: NetworkImage(
      //                                         'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//101/MTA-53591465/no-brand_no-brand_full01.jpg')),
      //                               ),
      //                             )
      //                           ],
      //                         ),
      //                         SizedBox(height: 10),
      //                         Text(
      //                           "Sugeng",
      //                           style:
      //                               TextStyle(color: Colors.white, fontSize: 24),
      //                         ),
      //                         SizedBox(height: 10),
      //                         Container(
      //                           width: MediaQuery.of(context).size.width * 0.95,
      //                           height: MediaQuery.of(context).size.height * 0.5,
      //                           // height: MediaQuery.of(context).size.width * 0.3,
      //                           decoration: BoxDecoration(
      //                             color: Colors.white,
      //                             borderRadius: BorderRadius.only(
      //                                 topLeft: Radius.circular(10),
      //                                 topRight: Radius.circular(10),
      //                                 bottomLeft: Radius.circular(10),
      //                                 bottomRight: Radius.circular(10)),
      //                             boxShadow: [
      //                               BoxShadow(
      //                                 color: Colors.grey.withOpacity(0.2),
      //                                 spreadRadius: 2,
      //                                 blurRadius: 2,
      //                                 offset: Offset(
      //                                     0, 1), // changes position of shadow
      //                               ),
      //                             ],
      //                           ),
      //                           child: Padding(
      //                             padding: const EdgeInsets.symmetric(
      //                                 horizontal: 20, vertical: 15),
      //                             child: ListView(
      //                               children: [
      //                                 Row(
      //                                   mainAxisAlignment:
      //                                       MainAxisAlignment.spaceAround,
      //                                   children: [
      //                                     GestureDetector(
      //                                       onTap: () {
      //                                         // print("Container clicked");
      //                                         Get.to(const CoinView());
      //                                       },
      //                                       child: Row(
      //                                         children: [
      //                                           Container(
      //                                             child: Padding(
      //                                               padding:
      //                                                   const EdgeInsets.fromLTRB(
      //                                                       0, 0, 8, 0),
      //                                               child: Icon(
      //                                                 FontAwesomeIcons.coins,
      //                                                 color: Color(0xFFFFD900),
      //                                                 size: 24.0,
      //                                               ),
      //                                             ),
      //                                           ),
      //                                           Column(
      //                                             children: [
      //                                               Text(
      //                                                 "Coins",
      //                                                 style:
      //                                                     TextStyle(fontSize: 14),
      //                                               ),
      //                                               Text(
      //                                                 "1000",
      //                                                 style:
      //                                                     TextStyle(fontSize: 18),
      //                                               ),
      //                                             ],
      //                                           ),
      //                                         ],
      //                                       ),
      //                                     ),
      //                                     GestureDetector(
      //                                       child: Row(
      //                                         children: [
      //                                           Container(
      //                                             child: Padding(
      //                                               padding:
      //                                                   const EdgeInsets.fromLTRB(
      //                                                       0, 0, 8, 0),
      //                                               child: Icon(
      //                                                 FontAwesomeIcons.stamp,
      //                                                 color: Color(0xFF009000),
      //                                                 size: 24.0,
      //                                               ),
      //                                             ),
      //                                           ),
      //                                           Column(
      //                                             children: [
      //                                               Text(
      //                                                 "Stamp",
      //                                                 style: TextStyle(
      //                                                   fontSize: 14,
      //                                                 ),
      //                                               ),
      //                                               Text(
      //                                                 "3000",
      //                                                 style:
      //                                                     TextStyle(fontSize: 18),
      //                                               ),
      //                                             ],
      //                                           ),
      //                                         ],
      //                                       ),
      //                                     ),
      //                                   ],
      //                                 ),
      //                                 SizedBox(height: 20),
      //                                 Divider(
      //                                   color: Colors.grey,
      //                                 ),
      //                                 SizedBox(height: 10),
      //                                 Container(
      //                                   height: 30,
      //                                   child: Row(
      //                                     children: [
      //                                       Icon(
      //                                         FontAwesomeIcons.idCard,
      //                                         color: Colors.deepOrange,
      //                                         size: 18.0,
      //                                       ),
      //                                       Padding(
      //                                         padding: const EdgeInsets.fromLTRB(
      //                                             10, 0, 0, 0),
      //                                         child: Text(
      //                                           "Member Exsekutif",
      //                                           style: TextStyle(
      //                                               fontSize: 18,
      //                                               fontWeight: FontWeight.w300,
      //                                               color: Colors.deepOrange),
      //                                         ),
      //                                       ),
      //                                     ],
      //                                   ),
      //                                 ),
      //                                 Divider(
      //                                   color: Colors.grey,
      //                                 ),
      //                                 Container(
      //                                   height: 30,
      //                                   child: Row(
      //                                     children: [
      //                                       Icon(
      //                                         FontAwesomeIcons.store,
      //                                         color: Colors.grey[700],
      //                                         size: 18.0,
      //                                       ),
      //                                       Padding(
      //                                         padding: const EdgeInsets.fromLTRB(
      //                                             10, 0, 0, 0),
      //                                         child: Text(
      //                                           "Store",
      //                                           style: TextStyle(
      //                                               fontSize: 18,
      //                                               fontWeight: FontWeight.w300,
      //                                               color: Colors.grey[700]),
      //                                         ),
      //                                       ),
      //                                     ],
      //                                   ),
      //                                 ),
      //                                 Divider(
      //                                   color: Colors.grey,
      //                                 ),
      //                                 Container(
      //                                   height: 30,
      //                                   child: Row(
      //                                     children: [
      //                                       Icon(
      //                                         FontAwesomeIcons.rightLeft,
      //                                         color: Colors.grey[700],
      //                                         size: 18.0,
      //                                       ),
      //                                       Padding(
      //                                         padding: const EdgeInsets.fromLTRB(
      //                                             10, 0, 0, 0),
      //                                         child: Text(
      //                                           "Transaksi",
      //                                           style: TextStyle(
      //                                               fontSize: 18,
      //                                               fontWeight: FontWeight.w300,
      //                                               color: Colors.grey[700]),
      //                                         ),
      //                                       ),
      //                                     ],
      //                                   ),
      //                                 ),
      //                                 Divider(
      //                                   color: Colors.grey,
      //                                 ),
      //                                 Container(
      //                                   height: 30,
      //                                   child: Row(
      //                                     children: [
      //                                       Icon(
      //                                         FontAwesomeIcons.arrowsRotate,
      //                                         color: Colors.grey[700],
      //                                         size: 18.0,
      //                                       ),
      //                                       Padding(
      //                                         padding: const EdgeInsets.fromLTRB(
      //                                             10, 0, 0, 0),
      //                                         child: Text(
      //                                           "Riwayat",
      //                                           style: TextStyle(
      //                                               fontSize: 18,
      //                                               fontWeight: FontWeight.w300,
      //                                               color: Colors.grey[700]),
      //                                         ),
      //                                       ),
      //                                     ],
      //                                   ),
      //                                 ),
      //                                 Divider(
      //                                   color: Colors.grey,
      //                                 ),
      //                                 Container(
      //                                   height: 30,
      //                                   child: Row(
      //                                     children: [
      //                                       Icon(
      //                                         FontAwesomeIcons.circleQuestion,
      //                                         color: Colors.grey[700],
      //                                         size: 18.0,
      //                                       ),
      //                                       Padding(
      //                                         padding: const EdgeInsets.fromLTRB(
      //                                             10, 0, 0, 0),
      //                                         child: Text(
      //                                           "FAQ",
      //                                           style: TextStyle(
      //                                               fontSize: 18,
      //                                               fontWeight: FontWeight.w300,
      //                                               color: Colors.grey[700]),
      //                                         ),
      //                                       ),
      //                                     ],
      //                                   ),
      //                                 ),
      //                                 Divider(
      //                                   color: Colors.grey,
      //                                 ),
      //                                 Container(
      //                                   height: 30,
      //                                   child: Row(
      //                                     children: [
      //                                       Icon(
      //                                         FontAwesomeIcons.phone,
      //                                         color: Colors.grey[700],
      //                                         size: 18.0,
      //                                       ),
      //                                       Padding(
      //                                         padding: const EdgeInsets.fromLTRB(
      //                                             10, 0, 0, 0),
      //                                         child: Text(
      //                                           "Hubungi Kami",
      //                                           style: TextStyle(
      //                                               fontSize: 18,
      //                                               fontWeight: FontWeight.w300,
      //                                               color: Colors.grey[700]),
      //                                         ),
      //                                       ),
      //                                     ],
      //                                   ),
      //                                 ),
      //                                 Divider(
      //                                   color: Colors.grey,
      //                                 ),
      //                                 Container(
      //                                   height: 30,
      //                                   child: Row(
      //                                     children: [
      //                                       Icon(
      //                                         FontAwesomeIcons.fileContract,
      //                                         color: Colors.grey[700],
      //                                         size: 18.0,
      //                                       ),
      //                                       Padding(
      //                                         padding: const EdgeInsets.fromLTRB(
      //                                             10, 0, 0, 0),
      //                                         child: Text(
      //                                           "Kebijakan Privasi",
      //                                           style: TextStyle(
      //                                               fontSize: 18,
      //                                               fontWeight: FontWeight.w300,
      //                                               color: Colors.grey[700]),
      //                                         ),
      //                                       ),
      //                                     ],
      //                                   ),
      //                                 ),
      //                                 Divider(
      //                                   color: Colors.grey,
      //                                 ),
      //                               ],
      //                             ),
      //                           ),
      //                         )
      //                       ],
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 30,
    );

    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
