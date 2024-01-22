import 'package:flutter/material.dart';

import '../constant/router_constant.dart';
import '../constant/string.dart';
import 'food_card_widget.dart';

class FoodListWidget extends StatelessWidget {
  const FoodListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal, children: [
      FoodCardWidget(
        foodName: StringConstant.foodVeggie,
        price: StringConstant.foodprice1,
        foodImage: StringConstant.foodVeggieImage,
        page: RouteConstant.detailPageRoute,
      ),
      const SizedBox(
        width: 30,
      ),

      FoodCardWidget(
        foodName: StringConstant.drinks,
        price: StringConstant.foodprice,
        foodImage: StringConstant.drinkImag,
        page: RouteConstant.detailPageRoute,
      ),
      const SizedBox(
        width: 30,
      ),
      FoodCardWidget(
        foodName: StringConstant.foodSpicy,
        price: StringConstant.foodprice2,
        foodImage: StringConstant.foodSpicyImage,
        page: RouteConstant.detailPageRoute,
      )
    ]);
  }
}
