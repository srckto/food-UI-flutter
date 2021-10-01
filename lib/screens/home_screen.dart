import 'package:flutter/material.dart';
import 'package:meal_ui/models/food.dart';
import 'package:meal_ui/widgets/food_type_widget.dart';
import 'package:meal_ui/widgets/meal_item_widget.dart';
import 'package:meal_ui/widgets/search_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 30,
              ),
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text(
                  "Choose the food you love",
                  style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 42),
                ),
              ),
              SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: FoodType(),
              ),
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: SearchWidget(),
              ),
              SizedBox(height: 40),
              Container(
                height: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foods.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: MealItemWidget(selectMeal: foods[index]),
                    );
                  },
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

