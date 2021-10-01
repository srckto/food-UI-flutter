import 'package:flutter/material.dart';
import 'package:meal_ui/models/food.dart';

class DetailScreen extends StatefulWidget {
  final Food selectMeal;

  const DetailScreen({required this.selectMeal});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            _headerImage(_size, context),
            SliverToBoxAdapter(child: SizedBox(height: 15)),
            _images(_size),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 17, left: 17),
                child: Text(
                  "${widget.selectMeal.timePrepare} / ${widget.selectMeal.title}",
                  style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 15),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 17, left: 17),
                child: Text(
                  widget.selectMeal.title,
                  style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 30),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 17, left: 17),
                child: Text(
                  "Only For ${widget.selectMeal.location}",
                  style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 15),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 45),
            ),
            _buttonsInDown(context),
            SliverToBoxAdapter(
              child: SizedBox(height: 25),
            ),
          ],
        ),
        floatingActionButton: Container(
          margin: EdgeInsets.only(top: 30, left: 5),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(1, 2),
              ),
            ],
          ),
          child: FloatingActionButton(
            backgroundColor: Theme.of(context).primaryColor,
            onPressed: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Theme.of(context).backgroundColor,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      ),
    );
  }

  SliverToBoxAdapter _buttonsInDown(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).primaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (widget.selectMeal.quantity > 1) {
                            widget.selectMeal.quantity--;
                          }
                        });
                      },
                      icon: Icon(
                        Icons.remove,
                        color: Theme.of(context).backgroundColor,
                      ),
                      splashColor: Theme.of(context).primaryColor,
                    ),
                    Text(
                      "${widget.selectMeal.quantity}",
                      style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 23),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.selectMeal.quantity++;
                        });
                      },
                      icon: Icon(
                        Icons.add,
                        color: Theme.of(context).backgroundColor,
                      ),
                      splashColor: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      "Buy Now",
                      style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 23),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _headerImage(Size _size, BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: _size.width,
            height: 420,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45),
                )),
          ),
          Container(
            width: _size.width,
            height: 370,
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor.withOpacity(0.25),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(370),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: Container(
              alignment: Alignment.topCenter,
              width: _size.width * 0.9,
              height: 400,
              child: Image.asset(
                widget.selectMeal.images[0],
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }

  SliverToBoxAdapter _images(Size _size) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 7),
        width: _size.width,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    widget.selectMeal.images[1],
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    widget.selectMeal.images[2],
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    widget.selectMeal.images[3],
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
