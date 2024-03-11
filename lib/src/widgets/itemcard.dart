import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodcafe/src/widgets/toggle.dart';

class ItemCard extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String description;
  final int price;
  const ItemCard(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.description,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      // color: Colors.green,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // color: Colors.yellow,
            width: 258,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 74,
                  height: 74,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      image: DecorationImage(
                        image: AssetImage(imgUrl),
                        fit: BoxFit.fill,
                      )),
                ),
                Container(
                    width: 168,
                    // color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/nonveg.png"),
                        Text(
                          title,
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 16,
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            color: Color(0xFF5E5E5E),
                            fontSize: 10,
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w300,
                            height: 0,
                          ),
                        ),
                        Text(
                          "₹$price",
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 14,
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 5),
              width: 66,
              height: 60,
              child: ToggleSwitch(
                status: false,
              ))
        ],
      ),
    );
  }
}