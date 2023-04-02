import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'detail_faktur_view.dart';

class BodyRiwayatView extends StatelessWidget {
  const BodyRiwayatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              // Divider(
              //   color: Colors.grey,
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
              //   child: Container(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Expanded(
              //           flex: 8,
              //           child: Row(
              //             children: [
              //               Expanded(
              //                 flex: 1,
              //                 child: Icon(
              //                   FontAwesomeIcons.circleArrowDown,
              //                   color: Colors.green,
              //                   size: 28.0,
              //                 ),
              //               ),
              //               Expanded(
              //                 flex: 7,
              //                 child: Container(
              //                   margin: EdgeInsets.symmetric(horizontal: 10),
              //                   // decoration: BoxDecoration(color: Colors.amber),
              //                   // width: double.infinity,
              //                   child: Column(
              //                     mainAxisSize: MainAxisSize.min,
              //                     crossAxisAlignment: CrossAxisAlignment.start,
              //                     children: [
              //                       Text(
              //                         "Voucher",
              //                         textAlign: TextAlign.justify,
              //                         style: TextStyle(
              //                             fontSize: 16,
              //                             color: Colors.deepOrange),
              //                       ),
              //                       Text(
              //                         "Selamat Kamu mendapatkan poin 1000",
              //                         textAlign: TextAlign.justify,
              //                         style: TextStyle(
              //                             fontSize: 12,
              //                             color: Colors.grey[600]),
              //                       ),
              //                       Container(
              //                         margin: EdgeInsets.symmetric(vertical: 2),
              //                         padding: EdgeInsets.all(1),
              //                         decoration: BoxDecoration(
              //                           color: Colors.grey[200],
              //                         ),
              //                         child: Padding(
              //                           padding: const EdgeInsets.all(2.0),
              //                           child: Text(
              //                             "03-04-2023",
              //                             textAlign: TextAlign.justify,
              //                             style: TextStyle(
              //                                 fontSize: 8,
              //                                 color: Colors.grey[500]),
              //                           ),
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //         Expanded(
              //           flex: 1,
              //           child: Icon(
              //             FontAwesomeIcons.chevronRight,
              //             color: Colors.grey,
              //             size: 16.0,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // Divider(
              //   color: Colors.grey,
              // ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Riwayat Pembelian",
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      "Lihat Semua",
                      style: TextStyle(fontSize: 12, color: Colors.deepOrange),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  // print("Container clicked");
                  Get.to(const DetailFakturView());
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 8,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 8,
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  // decoration: BoxDecoration(color: Colors.amber),
                                  // width: double.infinity,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Pembelian Berhasil - [Faktur 12-2110000001]",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.deepOrange),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: Text(
                                          "Pembelian dengan No Nota 12-2110000001 Berhasi di Lakukan",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[600]),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 2),
                                        padding: EdgeInsets.all(1),
                                        decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text(
                                            "03-04-2023",
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                                fontSize: 8,
                                                color: Colors.grey[500]),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            FontAwesomeIcons.chevronRight,
                            color: Colors.grey,
                            size: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
//
//
//
//
              // Container(
              //   margin: EdgeInsets.all(5),
              //   padding: EdgeInsets.all(10),
              //   child: Column(
              //     children: [
              //       Container(
              //         padding: EdgeInsets.symmetric(vertical: 10),
              //         width: double.infinity,
              //         child: Text(
              //           "iLuFA Jelas Lebih Murah",
              //           textAlign: TextAlign.center,
              //           style: TextStyle(
              //               fontSize: 18, fontWeight: FontWeight.w500),
              //         ),
              //       ),
              //       Container(
              //         padding: EdgeInsets.symmetric(vertical: 10),
              //         width: double.infinity,
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               "Kasir: Sugeng 1",
              //             ),
              //             Text(
              //               "Sales: Sugeng 2",
              //             ),
              //           ],
              //         ),
              //       ),
              //       Container(
              //         padding: EdgeInsets.symmetric(vertical: 10),
              //         width: double.infinity,
              //         child: Text(
              //           "No.Pesanan: 10-552502522",
              //           style: TextStyle(
              //               fontSize: 16, fontWeight: FontWeight.w500),
              //         ),
              //       ),
              //       Divider(
              //         color: Colors.grey,
              //       ),
              //       Container(
              //         padding: EdgeInsets.symmetric(vertical: 10),
              //         width: double.infinity,
              //         child: Text(
              //           "Rincian Pebelian",
              //           style: TextStyle(
              //               fontSize: 16, fontWeight: FontWeight.w500),
              //         ),
              //       ),
              //       Row(
              //         children: [
              //           Expanded(
              //             flex: 7,
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 Container(
              //                   width: double.infinity,
              //                   child: Text("Softcase Redmi 10"),
              //                 ),
              //                 // Container(
              //                 //   width: double.infinity,
              //                 //   child: Text("Softcase Redmi 10"),
              //                 // )
              //               ],
              //             ),
              //           ),
              //           Expanded(
              //             flex: 3,
              //             child: Column(
              //               children: [
              //                 Container(
              //                     width: double.infinity, child: Text("1x")),
              //                 Container(
              //                   width: double.infinity,
              //                   child: Text("Rp 10.000"),
              //                 )
              //               ],
              //             ),
              //           ),
              //         ],
              //       ),
              //       Row(
              //         children: [
              //           Expanded(
              //             flex: 7,
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 Container(
              //                   width: double.infinity,
              //                   child: Text("Softcase Redmi 10"),
              //                 ),
              //                 // Container(
              //                 //   width: double.infinity,
              //                 //   child: Text("Softcase Redmi 10"),
              //                 // )
              //               ],
              //             ),
              //           ),
              //           Expanded(
              //             flex: 3,
              //             child: Column(
              //               children: [
              //                 Container(
              //                     width: double.infinity, child: Text("1x")),
              //                 Container(
              //                   width: double.infinity,
              //                   child: Text("Rp 10.000"),
              //                 )
              //               ],
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
