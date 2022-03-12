import 'package:flutter/material.dart';

import 'constant.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen(this.index, this.name, this.image, this.component, this.time);
  final int index;
  final String name, image,component,time;
 // final bool tags;

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: KPrimaryColor,
        appBar: AppBar(
          backgroundColor: KOrangeColor,
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
          ),

        ),
        /*bottomNavigationBar: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              height: 60,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 32),
              decoration: BoxDecoration(
                  color: KOrangeColor,
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
                margin: EdgeInsets.only(top: 64, left: 28),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     /* Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 28),
                          decoration: BoxDecoration(
                              color: KOrangeColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                color: KLightColor,
                              )),
                        ),
                      ),*/
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Text(
                          widget.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 36),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 3.5,
                                child: Column(children: [
                                  Text(
                                    "Calories",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("120 Calories",
                                      style: TextStyle(
                                          fontSize: 20,
                                          //color: Colors.grey,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Time",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(widget.time,
                                      style: TextStyle(
                                          fontSize: 20,
                                          //color: Colors.grey,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 30,
                                  ),
                                 /* Text(
                                    "Total Serve",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("1 Serving",
                                      style: TextStyle(
                                          fontSize: 20,
                                          //color: Colors.grey,
                                          fontWeight: FontWeight.bold)),*/
                                ]),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                             /* Hero(
                                tag: widget.tags
                                    ? "break${widget.index}"
                                    : "recomended${widget.index}",*/
                                //child:
                                Image.asset(
                                  widget.image,
                                  height: 250,
                                  fit: BoxFit.contain,
                               /* ),
                              )*/
                                )]
                                ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "The Components",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 28, bottom: 28),
                          child: Text(
                            widget.component,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ))
                    ])))
    );
  }
}
