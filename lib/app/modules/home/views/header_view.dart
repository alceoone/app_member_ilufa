import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderView extends GetView {
  const HeaderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
      child: Row(
        children: [
          Expanded(
            flex: 8,
            child: Row(
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//101/MTA-53591465/no-brand_no-brand_full01.jpg')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sugeng",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Member Eksekutif",
                          style: TextStyle(
                              fontSize: 14, color: Colors.deepOrange)),
                    ],
                  ),
                )
              ],
            ),
            //   child: Container(
            //     height: 40,
            //     // width: MediaQuery.of(context).size.width * 0.3,
            //     decoration: BoxDecoration(
            //       color: Colors.grey[200],
            //       borderRadius: BorderRadius.circular(5),
            //     ),
            //     child: Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 10),
            //       child: TextFormField(
            //         decoration: const InputDecoration(
            //           border: InputBorder.none,
            //           hintText: 'Pencarian',
            //           hintStyle: TextStyle(
            //             color: Colors.grey,
            //             fontSize: 16,
            //           ),
            //           // prefixIcon: Icon(
            //           //   Icons.person,
            //           //   color: Colors.grey,
            //           // ),
            //         ),
            //         onChanged: (value) {},
            //       ),
            //     ),
            //   ),
          ),
          Expanded(
            flex: 1,
            child: Icon(
              FontAwesomeIcons.bell,
              color: Colors.black,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
