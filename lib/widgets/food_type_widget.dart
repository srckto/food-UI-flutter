import 'package:flutter/material.dart';

class FoodType extends StatefulWidget {
  @override
  State<FoodType> createState() => _FoodTypeState();
}

class _FoodTypeState extends State<FoodType> {
  int _select = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      child: ListView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _select = 1;
                });
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: _select == 1 ? Theme.of(context).primaryColor : Theme.of(context).backgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 11,
                      offset: Offset(0, 3),
                    ),
                  ],
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 1.2,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Veg Dinner",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: _select == 1 ? Theme.of(context).canvasColor : Theme.of(context).primaryColor,
                        ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _select = 2;
                });
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: _select == 2 ? Theme.of(context).primaryColor : Theme.of(context).canvasColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 11,
                        offset: Offset(0, 3),
                      ),
                    ],
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 1.2,
                    )),
                child: Center(
                  child: Text(
                    "Non-Veg Dinner",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: _select == 2 ? Theme.of(context).canvasColor : Theme.of(context).primaryColor,
                        ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _select = 3;
                });
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: _select == 3 ? Theme.of(context).primaryColor : Theme.of(context).canvasColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 11,
                        offset: Offset(0, 3),
                      ),
                    ],
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 1.2,
                    )),
                child: Center(
                  child: Text(
                    "Chicken Khari",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: _select == 3 ? Theme.of(context).canvasColor : Theme.of(context).primaryColor,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
