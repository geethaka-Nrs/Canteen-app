import 'package:flutter/material.dart';
import 'package:my_app/Screens/wala_canteen.dart';

class HomePage extends StatefulWidget {
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
                  buildItem(
                      "Wala Canteen",
                      "123 reviews",
                      "https://images.pexels.com/photos/3676531/pexels-photo-3676531.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                      4),
                  buildItem(
                      "Goda canteen",
                      "98 reviews",
                      "https://images.pexels.com/photos/1147993/pexels-photo-1147993.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      3.8),
                  buildItem(
                      "Wala canteen",
                      "123 reviews",
                      "https://images.pexels.com/photos/842571/pexels-photo-842571.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                      4),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildItem(
      String title, String subTitle, String url, double rating) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Wala()));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12.0),
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: <Widget>[
            Hero(
              tag: url,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(url),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.0, spreadRadius: 1.0, color: Colors.grey)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      Text(
                        subTitle,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Text(
                      rating.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
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
