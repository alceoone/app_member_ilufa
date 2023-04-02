import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class CardPromoView extends GetView {
  const CardPromoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List imgList = [
      // 'assets/images/promo/promo.png',
      'https://i.ytimg.com/vi/_Dds6xJFSzA/hqdefault.jpg?sqp=-oaymwExCOADEI4CSFryq4qpAyMIARUAAIhCGAHwAQH4AdQGgALgA4oCDAgAEAEYfyBRKBkwDw==&rs=AOn4CLDLNsq6R6rcobMGzERdnhxJuZc1Cg',
      'https://img.ws.mms.shopee.co.id/bf2e42a7a6b0769e5a21982dd196771a',
      'https://img.sp.mms.shopee.co.id/fcff8e02882b902396566517ab50a3fc'
    ];
    List<T> map<T>(List list, Function handler) {
      List<T> result = [];
      for (var i = 0; i < list.length; i++) {
        result.add(handler(i, list[i]));
      }
      return result;
    }

    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 7),
          autoPlayAnimationDuration: Duration(milliseconds: 1000),
          autoPlayCurve: Curves.fastOutSlowIn,
          pauseAutoPlayOnTouch: true,
          enlargeCenterPage: true,
          viewportFraction: 0.90,
          scrollDirection: Axis.horizontal,
          // onPageChanged: (index, reason) {
          //   setState(() {
          //     _currentIndex = index;
          //   });
          // }
        ),
        items: imgList.map((imgUrl) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.network(
                  imgUrl,
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  // height: 100.0,
                  // width: 200.0,
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
