class Food {
  final String id;
  final String title;
  final String description;
  final String primaryImage;
  final List<String> images;
  final double price;
  int quantity;
  final bool isVeg;
  final bool isNonVeg;
  final String timePrepare;
  final String location;
  final int personPerPlate;
  Food({
    required this.id,
    required this.title,
    required this.description,
    required this.primaryImage,
    required this.images,
    required this.price,
    this.quantity = 1,
    required this.isVeg,
    required this.isNonVeg,
    required this.timePrepare,
    required this.location,
    required this.personPerPlate,
  });
}

List<Food> foods = [
  Food(
    id: "1",
    title: "Vegetarian Dinner",
    description: "Traditional vegetarian dinner",
    primaryImage: "assets/images/Vegan curry dish.png",
    images: [
      "assets/images/asset-1.png", // On page detail  /// First Image
      "assets/images/Vegan curry dish.png",
      "assets/images/Vegan curry dish.png",
      "assets/images/Vegan curry dish.png",
    ],
    quantity: 1,
    price: 5.5,
    timePrepare: "Lunch & Dinner",
    location: "Bhubaneswar, Odisha, India",
    personPerPlate: 1,
    isVeg: true,
    isNonVeg: true,
  ),
  Food(
    id: "2",
    title: "Chicken Khari",
    description: "Traditional vegetarian dinner",
    primaryImage: "assets/images/64c71976-6168-4bb2-b07a-d9f0c06cd594_16x9_788x442.png",
    images: [
      "assets/images/asset-1.png", // On page detail  /// First Image
      "assets/images/Vegan curry dish.png",
      "assets/images/Vegan curry dish.png",
      "assets/images/Vegan curry dish.png",
    ],
    quantity: 1,
    price: 14.99,
    timePrepare: "Breakfast & Lunch",
    location: "location, Iraq, India",
    personPerPlate: 1,
    isVeg: true,
    isNonVeg: true,
  ),
];
