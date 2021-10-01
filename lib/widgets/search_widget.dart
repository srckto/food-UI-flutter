import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Container(
      width: _size.width * 0.8,
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Icon(
              Icons.search,
              color: Theme.of(context).canvasColor,
              size: 29,
            ),
          ),
          Expanded(
            flex: 5,
            child: TextFormField(
              cursorColor: Theme.of(context).canvasColor,
              decoration: InputDecoration(
                hintText: "Search your food",
                hintStyle: Theme.of(context).textTheme.headline4!.copyWith(letterSpacing: 0.5),
                // hint: Text("Search your food"),
                // labelStyle: Theme.of(context).textTheme.headline4!.copyWith(letterSpacing: 0.5),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
