import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

class homee extends StatefulWidget {
  @override
  _homeeState createState() => _homeeState();
}

class _homeeState extends State<homee> {
  final List<String> cardTexts = [
    "Fruit",
    "Vegetables",
    "Snack",
    "Meat",
  ];

  final List<List<dynamic>> moreImages = [
    ["Candy", "images/sugar_rush.png"],
    ["Macaroni", "images/salty_food.png"],
    ["Semangka", "images/semangka.png"],
    ["Jeruk", "images/jeruk.png"],
    ["Stoberi", "images/stoberi.png"],
    ["Semangka", "images/semangka.png"],
    ["Semangka", "images/semangka.png"],
  ];

  set unselectedColor(MaterialColor unselectedColor) {}
  set selectedColor(MaterialColor selectedColor) {}

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).popUntil((route) => route.isFirst);
        return true;
      },
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 65, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Daily\nGrocery Food",
                    style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 21),
            SizedBox(
              height: 55,
              child: ListView.builder(
                itemCount: cardTexts.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.only(left: 12, right: 6, top: 16),
                    decoration: BoxDecoration(
                      color: Color(0xFF18243C),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Center(
                      child: Text(
                        cardTexts[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Fruit",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: moreImages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: Container(
                              height: 120,
                              width: 120,
                              child: Image.asset(
                                moreImages[index][1],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            moreImages[index][0],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF18243C),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: (index) {},
        ),
      ),
    );
  }
}
