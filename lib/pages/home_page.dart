import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});
  static final String id = "Home_page";

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Cars",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, "All"),
                    singleTab(false, "Red"),
                    singleTab(false, "Blue"),
                    singleTab(false, "Green"),
                    singleTab(false, "Yellow"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //Car items
              makeItem("assets/images/im_car1.jpg"),
              makeItem("assets/images/im_car2.jpg"),
              makeItem("assets/images/im_car3.jpg"),
              makeItem("assets/images/im_car4.png"),
              makeItem("assets/images/im_car5.jpg"),
            ],
          ),
        ),
      ),
    );
  }

  Widget singleTab(bool isSelected, String text) {
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey.shade300 : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: isSelected ? 20 : 17),
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
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("PDP Car",style: TextStyle(color: Colors.white,fontSize: 25),),
                      SizedBox(height: 10,),
                      Text("Electric",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ],
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Icon(Icons.favorite_outline),
                  ),
                )
              ],
            ),
            Text("100\$",style: TextStyle(color: Colors.white,fontSize: 25),),
          ],
        ),
      ),
    );
  }
}
