import 'package:flutter/material.dart';
import 'package:meal_ui/models/food.dart';
import 'package:meal_ui/screens/detail_screen.dart';
import 'package:meal_ui/widgets/food_type_widget.dart';
import 'package:meal_ui/widgets/meal_item_widget.dart';
import 'package:meal_ui/widgets/search_widget.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
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



// ClipRRect(
//                   borderRadius: BorderRadius.circular(15),
//                   child: Container(
//                     width: _size.width * 0.45,
//                     height: 350,
//                     decoration: BoxDecoration(
//                       color: Theme.of(context).backgroundColor,
//                     ),
//                     child: Column(
//                       children: [
//                         Container(
//                           height: 150,
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(15),
//                             child: Image.asset(
//                               "assets/images/64c71976-6168-4bb2-b07a-d9f0c06cd594_16x9_788x442.png",
//                               width: double.infinity,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 15),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 10),
//                           child: Text(
//                             "Vegetarian Dinner",
//                             style: Theme.of(context).textTheme.headline2,
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                         SizedBox(height: 13),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 15),
//                           child: Text(
//                             "Vegetarian Dinner titlasd dadwad saaaaaaaaaaa sdadw wadawdaw dawdawd awdawdawd",
//                             style: Theme.of(context).textTheme.headline3,
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                         SizedBox(height: 13),
//                         Text("1 person per plate"),
//                         Expanded(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Text(
//                                 "Just",
//                                 style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 25),
//                               ),
//                               Text(
//                                 "\$0.06",
//                                 style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 35),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),