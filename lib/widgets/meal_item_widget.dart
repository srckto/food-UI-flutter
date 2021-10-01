import 'package:flutter/material.dart';
import 'package:meal_ui/models/food.dart';
import 'package:meal_ui/screens/detail_screen.dart';

class MealItemWidget extends StatelessWidget {
  final Food selectMeal;

  const MealItemWidget({required this.selectMeal});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen(selectMeal: selectMeal))),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: _size.width * 0.45,
          height: 350,
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
          ),
          child: Column(
            children: [
              Container(
                height: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    selectMeal.primaryImage,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  selectMeal.title,
                  style: Theme.of(context).textTheme.headline2,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 13),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  selectMeal.description,
                  style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 13),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 13),
              Text("${selectMeal.personPerPlate} person per plate"),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Just",
                      style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 25),
                    ),
                    Text(
                      "\$${selectMeal.price}",
                      style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 35),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
