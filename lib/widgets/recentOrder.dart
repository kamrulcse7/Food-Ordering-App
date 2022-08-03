import 'package:flutter/material.dart';
import 'package:food_ordering_app/components/data/data.dart';
import 'package:food_ordering_app/components/models/order.dart';


class RecentOrder extends StatelessWidget {
  const RecentOrder({
    Key? key,
  }) : super(key: key);

  recentOrder(BuildContext context, Order order) {
    return Container(
      padding: const EdgeInsets.fromLTRB(02.0, 05.0, 10.0, 05.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.70,
          color: Color(0xFFF2F2F2),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "${order.food!.imageUrl}",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.only(left: 10.0),
                  // color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${order.food!.name}',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Text(
                        '${order.restaurant!.name}',
                        style: TextStyle(fontSize: 22.0),
                      ),
                      Text(
                        '${order.date}',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.fromLTRB(16.0, 20.0, 0.0, 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'Recent Order',
              style: TextStyle(fontSize: 24.0),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: currentUser.orders!.length,
                itemBuilder: (context, index) {
                  Order order = currentUser.orders![index];

                  return recentOrder(context, order);

                  // return Container(
                  //   padding: const EdgeInsets.fromLTRB(
                  //       02.0, 05.0, 10.0, 05.0),
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.circular(20.0),
                  //     child: Container(
                  //       width: MediaQuery.of(context).size.width * 0.70,
                  //       color: Color(0xFFF2F2F2),
                  //       child: Row(
                  //         children: [
                  //           Expanded(
                  //             flex: 3,
                  //             child: Container(
                  //               decoration: BoxDecoration(
                  //                 image: DecorationImage(
                  //                   image: AssetImage(
                  //                     "${currentUser.orders![index].food!.imageUrl}",
                  //                   ),
                  //                   fit: BoxFit.cover,
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //           Expanded(
                  //             flex: 5,
                  //             child: Container(
                  //               color: Colors.green,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
