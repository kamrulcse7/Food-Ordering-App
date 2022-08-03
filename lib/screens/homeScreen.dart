import 'package:flutter/material.dart';
import 'package:food_ordering_app/components/data/data.dart';
import 'package:food_ordering_app/widgets/nearByRestaurants.dart';
import 'package:food_ordering_app/widgets/recentOrder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // centerTitle: true,
        elevation: 0.0,
        toolbarHeight: 80.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black54,
            size: screenHeight * 0.04,
          ),
        ),
        title: Text(
          'foodzone',
          style: TextStyle(color: Colors.orange, fontSize: screenHeight * 0.04),
        ),
        actions: [
          Row(
            children: [
              Container(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      size: 30.0,
                      color: Colors.black54,
                    ),
                    Positioned(
                      right: -8,
                      top: -7,
                      child: CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.orange,
                        child: Text(
                          "${currentUser.cart!.length}",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.account_circle_sharp,
                  size: 32.0,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 06.0,
          ),
        ],

        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
            child: TextFormField(
              // obscureText: _isObscure,
              // controller: textcontroller,
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Color(0xFF9c9c9d),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 10.0),
                  child: Icon(
                    Icons.search_rounded,
                    color: Color(0xFF9c9c9d),
                    size: 32.0,
                  ),
                ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.close,
                    color: Colors.black54,
                  ),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.orangeAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.orangeAccent, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: ListView(
          children: [
            RecentOrder(),
            NearByRestaurants(),
          ],
        ),
      ),
    );
  }
}

