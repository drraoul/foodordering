import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../constant/color_constant.dart';
import '../constant/edge_instent_constant.dart';
import '../constant/radius_constant.dart';
import '../constant/router_constant.dart';
import '../constant/string.dart';
import '../constant/text_style_constant.dart';
import '../widget/orange_button_component.dart';


class AddToCardPage extends StatelessWidget {
  const AddToCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset : false,

        body:SingleChildScrollView(
        child:Padding(
          padding: EdgeInsentsConstant.detailPagePadding,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(EvaIcons.arrowIosBack)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3 - 10,
                  ),
                  Text(
                    StringConstant.cart,
                    style: TextStyleConstant.text1,
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage(StringConstant.cartHandImage)),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(StringConstant.cartSubTitle)
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    _CardFood(
                      foodName: StringConstant.foodVeggiee,
                      foodPrice: StringConstant.foodprice1,
                      imagePath: StringConstant.foodVeggieImage,
                      imagedrink: StringConstant.drinkImage ,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    _CardFood(
                      foodName: StringConstant.foodSpicyy,
                      foodPrice: StringConstant.foodprice2,
                      imagePath: StringConstant.foodSpicyImage,
                      imagedrink: StringConstant.drinkImage,
                    ),
                  ],
                ),
              ),
              OrangeButtonWidget(
                  text: "Complete Order", page: RouteConstant.homeScreenRoute)
            ],
          ),
        ),
        ),
      ),
    );
  }
}

class _CardFood extends StatelessWidget {
  final String imagePath;
  final String foodName;
  final String foodPrice;
  final String imagedrink;

  const _CardFood(
      {Key? key,
      required this.foodName,
      required this.foodPrice,
      required this.imagePath,
        required this.imagedrink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: ColorConstant.white),
      child: ListTile(
        leading: Image(
          image: AssetImage(imagePath),
          fit: BoxFit.fill,
        ),
        title: Text(
          foodName,
          style: TextStyleConstant.text,
        ),
        subtitle: Text(foodPrice,
            style: TextStyleConstant.text
                .copyWith(color: ColorConstant.tennesseeOrange)),
        trailing: Container(
          width: 60,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          decoration: BoxDecoration(
            borderRadius: RadiusConstant.radius,
            color: ColorConstant.ogreOdor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(

                EvaIcons.minus,
                size: 15,
                color: ColorConstant.white,
              ),
              Text(
                "1",
                style:
                    TextStyleConstant.text.copyWith(color: ColorConstant.white),
              ),
              Icon(
                EvaIcons.plus,
                size: 15,
                color: ColorConstant.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
