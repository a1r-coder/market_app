import 'package:flutter/material.dart';

class homework extends StatefulWidget {
  const homework({super.key});

  @override
  State<homework> createState() => _homeworkState();
}

class _homeworkState extends State<homework> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Cars",
          style: TextStyle(color: Colors.red, fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: Colors.red,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.red,
              )),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //SingleTab
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, "All",true),
                    singleTab(false, "Red",false),
                    singleTab(false, "Blue",false),
                    singleTab(false, "Green",false),
                    singleTab(false, "Yellow",false),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              //CARS
              makeItem("assets/images/im_car1.jpg"),
              makeItem("assets/images/im_car2.jpg"),
              makeItem("assets/images/im_car3.jpg"),
              makeItem("assets/images/im_car4.png"),
              makeItem("assets/images/im_car5.jpg"),
            ],
          ),
        )
      ),
    );
  }
  Widget singleTab(bool isSelected, String text,bool color) {
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: isSelected ? 20 : 17,color: color? Colors.white: Colors.black),
          ),
        ),
      ),
    );
  }
  Widget makeItem(String image) {
    return Container(
      width: double.infinity,
      height: 250,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 10,
              offset: Offset(0, 10),
            ),
          ]),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("PDP Car",style: TextStyle(color: Colors.white,fontSize: 25),),
                      SizedBox(height: 10,),
                      Text("100\$",style: TextStyle(color: Colors.white,fontSize: 25),),
                    ],
                  ),
                SizedBox(width: 10,),
                Text("Electric",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w500),),
              ],
            ),
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Center(
                child: Icon(Icons.favorite_outline,color: Colors.white,size: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
