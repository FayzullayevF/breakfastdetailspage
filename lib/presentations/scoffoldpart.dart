import 'package:breakfastdetail/presentations/bodyitem.dart';
import 'package:breakfastdetail/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Scoffoldpage extends StatelessWidget {
  const Scoffoldpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CategoryApp.mainBackground,
      appBar: AppBar(
        backgroundColor: CategoryApp.mainBackground,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: SvgPicture.asset(
            "assets/icons/arrow.svg",
            width: 22,
            height: 14,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Breakfast",
          style: TextStyle(
              color: CategoryApp.redPinkMain,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            children: [
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  color: CategoryApp.containercolor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: SvgPicture.asset(
                    "assets/icons/heart.svg",
                    width: 30,
                    height: 14,
                  ),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 3),
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: CategoryApp.containercolor,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: SvgPicture.asset("assets/icons/share.svg"),
                ),
              )
            ],
          )
        ],
      ),
      body: BodyItem()
    );
  }
}
