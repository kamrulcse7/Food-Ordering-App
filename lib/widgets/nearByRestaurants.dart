import 'dart:js';

import 'package:flutter/material.dart';
import 'package:food_ordering_app/components/data/data.dart';
import 'package:food_ordering_app/components/models/restaurant.dart';

class NearByRestaurants extends StatelessWidget {
  const NearByRestaurants({
    Key? key,
  }) : super(key: key);
  _nearByRestaurants() {
    List<Widget> restaurantList = [];
    restaurants.forEach((Restaurant restaurant) {
      restaurantList.add(
        InkWell(
          // onTap: () {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(builder: (context) => Container()),
          //   );
          // },
          child: Container(
            padding: const EdgeInsets.only(top: 18.0, bottom: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                  ),
                  height: 120.0,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("${restaurant.imageUrl}"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${restaurant.name}',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 14.0,
                              ),
                              Text(
                                '${restaurant.address}',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54),
                              ),
                              Text(
                                '0.3 miles',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.orangeAccent,
                        width: 16.0,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
    return Column(
      children: restaurantList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Near by Restaurants',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
          ),
          _nearByRestaurants(),
        ],
      ),
    );
  }
}
