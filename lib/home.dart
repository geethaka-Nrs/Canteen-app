import 'package:flutter/material.dart';
import 'package:my_app/Screens/wala_canteen.dart';

import 'Component/canteen_card.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/home";
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding:
                  const EdgeInsets.only(left: 25.0, top: 45.0, right: 25.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(
                        "Canteen App",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/2787310/pexels-photo-2787310.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    height: 40.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        buildTopChip("Breakfast", true),
                        buildTopChip("Soties", false),
                        buildTopChip("Drinks", false),
                        buildTopChip("Lunch", false),
                        buildTopChip("Dinner", false),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: Expanded(
                child: ListView(
                  children: <Widget>[
                    CanteenCard(context: context, title: "Wala Canteen", subTitle: "123 reviews", url: "https://images.pexels.com/photos/3676531/pexels-photo-3676531.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", rating: 4),
                    CanteenCard(context: context, title: "Goda canteen", subTitle: "98 reviews", url: "https://images.pexels.com/photos/1147993/pexels-photo-1147993.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", rating: 3.8),
                    CanteenCard(context: context, title: "Wala canteen", subTitle: "123 reviews", url: "https://images.pexels.com/photos/842571/pexels-photo-842571.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", rating: 4),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildTopChip(String label, bool isActive) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Chip(
        padding: const EdgeInsets.all(8.0),
        label: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        backgroundColor: isActive ? Colors.orange : Colors.grey,
      ),
    );
  }
}

