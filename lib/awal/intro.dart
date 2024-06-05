import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tutorial_intro_slider/awal/logdaf.dart';

class introawal extends StatefulWidget {
  const introawal({Key? key}) : super(key: key);

  @override
  State<introawal> createState() => _introawalState();
}

class _introawalState extends State<introawal> {
  PageController _controller = PageController();

  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFF18243C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  isLastPage = index == 2;
                });
              },
              children: [
                BuildIntroPage(
                  img: 'images/stoberi.png',
                  title: ' Grocery Shop',
                  description: 'After peeling the strawberries, '
                      'soak lettuce, pumpkin seeds and '
                      'worcestershire sauce with it in a soup pot The justice of '
                      'yearning powers is prime..',
                ),
                BuildIntroPage(
                  img: 'images/jeruk.png',
                  title: 'Page Two',
                  description: 'After peeling the strawberries, '
                      'soak lettuce, pumpkin seeds and '
                      'worcestershire sauce with it in a soup pot The justice of '
                      'yearning powers is prime..',
                ),
                BuildIntroPage(
                  img: 'images/semangka.png',
                  title: 'Page Three',
                  description: 'After peeling the strawberries, '
                      'soak lettuce, pumpkin seeds and '
                      'worcestershire sauce with it in a soup pot The justice of '
                      'yearning powers is prime..',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Theme.of(context).primaryColor,
                dotHeight: 8.0,
                dotWidth: 14.0,
                dotColor: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 252, 252, 252),
                foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(55),
                ),
              ),
              onPressed: () {
                if (isLastPage) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return akhiran();
                      },
                    ),
                  );
                } else {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Text(
                isLastPage ? 'Done' : 'Next',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}

class BuildIntroPage extends StatelessWidget {
  String title;
  String img;
  String description;
  BuildIntroPage({
    Key? key,
    required this.title,
    required this.description,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(55),
              ),
              elevation: 4.0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36,
            color: const Color.fromARGB(221, 255, 255, 255),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: const Color(0xFF838BA1)),
          ),
        ),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
