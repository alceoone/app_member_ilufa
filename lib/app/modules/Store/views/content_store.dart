import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContentStoreView extends StatelessWidget {
  const ContentStoreView({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> store = [
      {
        "id": 1,
        "store": "168 iluFA Gentan",
        "address":
            "Jl. Raya Songgo Langit Ruko A No. 1, Gentan, Kec. Baki, Kabupaten Sukoharjo, Jawa Tengah 57556",
        // "deskripsi": "Store Gajah Raya",
        'image': "LANDING PAGE BLIBLI w HIPPO.png",
      },
      {
        "id": 2,
        "store": "iLuFA 168 Super Store Solo",
        "address":
            "Jl. Gatot Subroto, Kemlayan, Kec. Serengan, Kota Surakarta, Jawa Tengah 57152",
        // "deskripsi": "Promo Diskon di Blibli",
        'image': "LANDING PAGE BLIBLI w MEE.png",
      },
      {
        "id": 3,
        "store": "168 iLuFA Pabelan",
        "address":
            "Jl. Duwet Raya, Karangasem, Kec. Laweyan, Kota Surakarta, Jawa Tengah 57145",
        // "deskripsi": "Promo Diskon di Blibli",
        'image': "LANDING PAGE SHOPEE w HIPPO.png",
      },
      {
        "id": 4,
        "store": "168 iLuFA Widuran",
        "address":
            "Jl. Sutan Syahrir No.6, Kepatihan Wetan, Kec. Jebres, Kota Surakarta, Jawa Tengah 57129",
        // "deskripsi": "Promo Diskon di Blibli",
        'image': "LANDING PAGE TOKPED w MEE.png",
      }
    ];
    return Column(
      children: [
        Container(
          // padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: store.map((data) {
              return box(
                data["image"],
                data["store"],
                data["address"],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget box(String dataImage, String dataStore, String dataAddress) {
    return GestureDetector(
      onTap: () {
        // Get.to(const DetailPromoView());
      },
      child: Container(
          margin: EdgeInsets.fromLTRB(10, 5, 5, 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Image.asset(
                "assets/image/${dataImage}",
                fit: BoxFit.fill,
                width: double.infinity,
                // width: 300,
                height: 200.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        // width: 300,
                        child: Text(
                          "${dataStore}",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        width: double.infinity,
                        // width: 300,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  FontAwesomeIcons.locationPin,
                                  color: Colors.red,
                                  size: 14.0,
                                )),
                            Expanded(
                              flex: 9,
                              child: Text(
                                "${dataAddress}",
                                style: TextStyle(fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
