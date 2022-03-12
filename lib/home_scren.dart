import 'package:alaa_final_project/constant.dart';
import 'package:alaa_final_project/category_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool tag = false;
  List categoryList = [
    {"image": "assets/images/main dishes.jpg", "name": "Main Dishes"},
    {"image": "assets/images/Salad.jpg", "name": "Salad"},
    {"image": "assets/images/sweets.jpg", "name": "Sweets"},
    {"image": "assets/images/healthy food.jpeg", "name": "healthy food"},
  ];

  List recomendedList = [
    {"image": "assets/images/flutterf1.jpg", "name": "Pasta with pink sauce"},
    {"image": "assets/images/flutterf7.jpg", "name": "Biscuit Bakes"},
    {"image": "assets/images/flutterf8.jpg", "name": "Tacos "},
    {"image": "assets/images/flutterf9.jpg", "name": "Tarkir"},
    {"image": "assets/images/flutterf10.jpg", "name": "Fried Eggs"},
    {"image": "assets/images/flutterf11.jpg", "name": "Casserole"},
  ];

  List Recomended = [
    {
      "image": "assets/images/flutterf1.jpg",
      "name": "Pasta with pink sauce",
      "component":
          "Half a kilo of pasta, a large can of tomatoes, 3 cloves of garlic, half a spoon of salt, a small spoon of black pepper, 2 tablespoons of tomato paste",
      "time": "45 mins"
    },
    {
      "image": "assets/images/flutterf7.jpg",
      "name": "Biscuit Bakes",
      "component":
          "3 cups of flour, 1 tablespoon of baking soda, 1 tablespoon of salt, 1 tablespoon of fine cardamom, 2 tablespoons of cinnamon, 1 cup of oats, ½ cup of butter, 2 cups of chocolate chips, 1 cup of sugar",
      "time": "45 mins"
    },
    {
      "image": "assets/images/flutterf8.jpg",
      "name": "Tacos",
      "component":
          "6 boiled potatoes, two cups of milk, a quarter cup of butter, half a spoon of salt, one kilogram of minced meat, 3 tablespoons of tajine, a quarter of a spoon of black pepper, 3 cups of water, a teaspoon of tomato paste",
      "time": "45 mins"
    },
    {
      "image": "assets/images/flutterf9.jpg",
      "name": "Tarkir",
      "component":
          "A cup of coconut flour, 2 tablespoons of coconut sugar, half a spoon of salt, half a spoon of baking powder, 6 eggs, a mop of milk, 4 tablespoons of vegetable oil, a spoonful of vanilla, a quarter cup of berries",
      "time": "45 mins"
    },
    {
      "image": "assets/images/flutterf10.jpg",
      "name": "Fried Eggs",
      "component":
          "1 kg of ground beef, 3 tomatoes, a quarter cup of flour, a cup of chopped parsley, 2 tablespoons of vegetable oil, half a spoon of salt, a quarter of a spoon of black pepper",
      "time": "45 mins"
    },
    {
      "image": "assets/images/flutterf11.jpg",
      "name": "Casserole",
      "component": "2 cups chopped dates, 1 cup chocolate, 1 cup coconut",
      "time": "20"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: KOrangeColor,
          actionsIconTheme: IconThemeData(color: Colors.white),
          title: Text("Cooking"),
          leading: IconButton(
            padding: EdgeInsets.only(right: 10),
            icon: Icon(Icons.cookie_rounded,
              color: KPrimaryColor,),
            onPressed: (){
              //Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: KLightColor,
        body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.only(top: 40, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    child: _imageS(recomendedList),
                  ),
                  /*Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => print("jndc"),
                        child: Icon(Icons.menu),
                      ),
                      GestureDetector(
                          onTap: () => print(""),
                          child: Icon(Icons.notifications_none))
                    ],
                  ),*/
                  SizedBox(
                    height: 16,
                  ),
                  /*Text(
                    "cooking",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),*/
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "what would you like to cook today !",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  /*Row(
                      children: [
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                       // decoration: BoxDecoration(
                            //color: KPrimaryColor,
                            //borderRadius: BorderRadius.circular(16)),
                        */ /*child: TextField(
                          cursorColor: KDartColor,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                                size: 35,
                              ),
                              hintText: "Search for recipes",
                              hintStyle:
                                  TextStyle(fontSize: 20, color: Colors.grey)),
                        ),*/ /*
                     // ),
                    //),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () => print(""),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                            color: KPrimaryColor,
                            borderRadius: BorderRadius.circular(16)),
                        child: Icon(
                          Icons.settings,
                          size: 35,
                        ),
                      ),
                    )
                  ]),*/
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today's Fresh Recips",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        /*GestureDetector(
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
                    height: 15,
                  ),
                  Container(
                      height: 240,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: categoryList.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                                onTap: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                        builder: (context) => CategoryScreen(
                                              index,
                                              categoryList[index]["name"],
                                              categoryList[index]["image"],
                                              tag = true,
                                            ))),
                                child: Container(
                                    height: 270,
                                    width: 270,
                                    margin: EdgeInsets.only(right: 32,bottom: 15,left: 5),
                                    decoration: BoxDecoration(
                                      color: KPrimaryColor,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 15),
                                          blurRadius: 20,
                                          color: Colors.black26,
                                        ),
                                      ],
                                    ),
                                    child: Stack(
                                      overflow: Overflow.visible,
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 0,
                                          minRating: 0,
                                          direction: Axis.horizontal,
                                          allowHalfRating: false,
                                          itemCount: 1,
                                          itemPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        /*Positioned(
                                          top: 16,
                                          left: 16,
                                          child: Icon(
                                            Icons.favorite_border,
                                            color: Colors.grey,
                                          ),
                                        ),*/
                                        Positioned(
                                          top: 17,
                                          right: -32,
                                          left: 50,
                                          child: Hero(
                                            tag: "break$index",
                                            child: Image.asset(
                                              categoryList[index]["image"],
                                              width: 80,
                                              height: 90,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 90,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Categories",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: KBluueColor,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                      categoryList[index]
                                                          ["name"],
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
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
                                                    height: 10,
                                                  ),
                                                  /* Text("120 Calories",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      )),*/
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(children: [
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
                                                          "Maxmum : 45 mins",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey,
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
                                                          Icons
                                                              .room_service_outlined,
                                                          color: Colors.grey,
                                                          size: 14,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          "1 Serving",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 12),
                                                        )
                                                      ],
                                                    ),
                                                  ])
                                                ]),
                                          ),
                                        )
                                      ],
                                    )));
                          })),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recommended",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        /*GestureDetector(
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
                    itemCount: recomendedList.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                        index,
                                        Recomended[index]["name"],
                                        Recomended[index]["image"],
                                        Recomended[index]["component"],
                                        Recomended[index]["time"],
                                        //tag = false,
                                      ))),
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
                                Hero(
                                  tag: "recomended$index",
                                  child: Image.asset(
                                    recomendedList[index]["image"],
                                    height: 180,
                                    width: 120,
                                    fit: BoxFit.contain,
                                  ),
                                ),
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
                                          "Recommended",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: KBluueColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(recomendedList[index]["name"],
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
                                            Text("120 Calories",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(children: [
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
                                        ])
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
                                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
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
                                        width: 28,
                                        child: IconButton(
                                          onPressed: () {
                                            m=s;
                                          },
                                          icon: m
                                          ),
                                        )*/
                                )

                              ],
                            ),

                          ));

                    },
                  )
                ],
              )),

        ));
  }
}

Widget _imageS(List categoryList){
  return ImageSlideshow(
    width: double.infinity,
    height: 290,
    initialPage: 1,
    indicatorColor: Colors.amber,
    indicatorBackgroundColor: Colors.grey,
    autoPlayInterval: 3000,
    isLoop: true,
    children: List.generate(categoryList.length, (index){
      return _Item(categoryList[index]['image'],categoryList[index]['name']);
    }),
  );

}


Widget _Item(String image, String name){
  return Container(
    margin: EdgeInsets.only(right: 20,left: 20,top: 20),
    decoration: BoxDecoration(
        borderRadius: new BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(image: NetworkImage(image),fit:BoxFit.cover)
    ),
    child: Container(
      margin: EdgeInsets.only(left: 20,bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          Text(name,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                shadows: [Shadow(color: Colors.black54,offset: Offset(20, 15),blurRadius: 20)]
            ) ,),

          /*Row(
            children: [
              Text("200",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    shadows: [Shadow(color: Colors.black54,offset: Offset(2, 2),blurRadius: 20)]
                ) ,),

              Icon(Icons.favorite,color: Colors.white,)
            ],
          )*/
        ],

      ),
    ),
  );
}
