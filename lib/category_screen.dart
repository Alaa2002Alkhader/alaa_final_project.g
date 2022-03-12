import 'package:alaa_final_project/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'details_screen.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen(this.index, this.name, this.image, this.tags);
  final int index;
  final String name, image;
  final bool tags;

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<CategoryScreen> {
  bool tag=false;

  List MainList = [
    {"image": "assets/images/flutterf1.jpg",
      "name": "Pasta with pink sauce",
      "component": "Half a kilo of pasta, a large can of tomatoes, 3 cloves of garlic, half a spoon of salt, a small spoon of black pepper, 2 tablespoons of tomato paste",
      "time": "45 mins"
    },
    {"image": "assets/images/main1.jpg",
      "name": "Meatballs with mashed potatoes",
      "component": "6 boiled potatoes, two cups of milk, a quarter cup of butter, half a spoon of salt, one kilogram of minced meat, 3 tablespoons of tajine, a quarter of a spoon of black pepper, 3 cups of water, a teaspoon of tomato paste",
      "time": "45 mins"
    },
    {"image": "assets/images/main2.jpg",
      "name": "Oven minced meat",
      "component": "1 kg of ground beef, 3 tomatoes, a quarter cup of flour, a cup of chopped parsley, 2 tablespoons of vegetable oil, half a spoon of salt, a quarter of a spoon of black pepper",
      "time": "45 mins"
    },
  ];

  List SaladList = [
    {"image": "assets/images/salad1.jpg",
      "name": "seasonal fruit salad",
      "component": "Two cups of sliced strawberries, a cup of blackberries, two kiwis, sliced, a stick of green mint, a quarter cup of orange juice.",
      "time": "25 mins"
    },
    {"image": "assets/images/salad2.jpg",
      "name": "Italian pasta salad",
      "component": "2 packages of pasta, 2 cups of chopped lettuce, 1 cup of cherry tomatoes, ½ cup of lemon juice, ½ teaspoon of salt, ¼ teaspoon of black pepper, 2 tablespoons of olive oil",
      "time": "45 mins"
    },
    {"image": "assets/images/salad3.jpg",
      "name": "Caesar salad",
      "component": "100 grams of Parmesan cheese, ¼ cup of cooking cream, ¼ cup of vegetable oil, 2 tablespoons of lemon juice, ½ teaspoon of salt, 1 garlic clove, 1 cup of toast, 1 cup of lettuce",
      "time": "35 mins"
    },
  ];

  List SweetsList = [
    {"image": "assets/images/sweets1.jpg",
      "name": "Cinnamon oat biscuits",
      "component": "3 cups of flour, 1 tablespoon of baking soda, 1 tablespoon of salt, 1 tablespoon of fine cardamom, 2 tablespoons of cinnamon, 1 cup of oats, ½ cup of butter, 2 cups of chocolate chips, 1 cup of sugar",
      "time": "45 mins"
    },
    {"image": "assets/images/sweets2.jpg",
      "name": "Waffle",
      "component": "3 cups of flour, 3 tablespoons of baking powder, 1 cup of vegetable oil, 3 cups of liquid milk, 3 eggs, 2 tablespoons of vanilla",
      "time": "30 mins"
    },
    {"image": "assets/images/sweets3.jpg",
      "name": "pancake",
      "component": "A cup of coconut flour, 2 tablespoons of coconut sugar, half a spoon of salt, half a spoon of baking powder, 6 eggs, a mop of milk, 4 tablespoons of vegetable oil, a spoonful of vanilla, a quarter cup of berries",
      "time": "45 mins"
    },
  ];

  List HealthyList = [
    {"image": "assets/images/healthy1.jpg",
      "name": "salmon kebab",
      "component": "350 gm salmon, 1 sliced lemon, 2 tablespoons olive oil, ½ teaspoon cumin, ½ teaspoon salt, red pepper",
      "time": "15 mins"
    },
    {"image": "assets/images/healthy2.jpg",
      "name": "Chocolate date balls",
      "component": "2 cups chopped dates, 1 cup chocolate, 1 cup coconut",
      "time": "20"
    },
    {"image": "assets/images/healthy3.jpg",
      "name": "Oats with bananas",
      "component": "1/4 cup oats, 1 cup milk, 1 sliced banana, 2 tablespoons chopped walnuts",
      "time": "10 mins"
    },
  ];

  @override
  Widget build(BuildContext context) {
    List a=[{}];
    if(widget.name=="Main Dishes"){
      a=MainList;
    }

    if(widget.name=="Salad"){
      a=SaladList;
    }

    if(widget.name=="Sweets"){
      a=SweetsList;
    }

    if(widget.name=="healthy food"){
      a=HealthyList;
    }


    return Scaffold(
      backgroundColor: KPrimaryColor,
      appBar: AppBar(
        backgroundColor: KBluueColor,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(right: 20),
          icon: Icon(Icons.arrow_back,
            color: KPrimaryColor,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        centerTitle: false,
        title: Text("Back",
          style: TextStyle(color: Colors.white)
          //Theme.of(context).textTheme.bodyText2,


        ),

      ),

     /* bottomNavigationBar: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            height: 60,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 32),
            decoration: BoxDecoration(
                color: KBluueColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Text(
              "Back",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: KLightColor),
            ),
          )),*/
        body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40, left: 16, right: 16),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.name,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
           /* GestureDetector(
              onTap: () => print(""),
              child: Text(
                "See All",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: KOrangeColor),
              ),
            )*/
          ]),
      SizedBox(
        height: 10,
      ),
      ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: a.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        index,
                        a[index]["name"],
                        a[index]["image"],
                        a[index]["component"],
                        a[index]["time"],
                       // tag = false,
                      )
                  )
              ),
               child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: KPrimaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    //Hero(
                     // tag: "recomended$index",
                     // child:
                      Image.asset(
                        a[index]["image"],
                        height: 180,
                        width: 120,
                        fit: BoxFit.contain,
                      ),
                    //),
                    //SizedBox(width: 20,),

                    Expanded(
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.name,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: KBluueColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            /*if(widget.name=="Main Dishes"){
                              print("");
                            },*/
                            Text(a[index]["name"],
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: List.generate(
                                    5,
                                        (index) => Icon(
                                      Icons.star,
                                      color: KOrangeColor,
                                      size: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                               /* Text("120 Calories",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    )),*/
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                           /* Row(children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: Colors.grey,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "10 mins",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.room_service_outlined,
                                    color: Colors.grey,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "1 Serving",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                            ])*/
                          ],
                        ),
                      ),
                    ),

                    Align(
                        alignment: Alignment.topRight,
                        child:
                        RatingBar.builder(
                          initialRating: 0,
                          minRating: 0,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 1,
                          itemPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                          itemBuilder: (context, _) => Icon(
                            Icons.favorite_outline,
                            color: Colors.red,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        /*Container(
                            height: 28,
                            width: 35,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.grey,
                              ),
                            ))*/
                    )
                  ],
                ),
              ));
        },
      )
    ]

    )
        )
        ),
    );
  }
}
