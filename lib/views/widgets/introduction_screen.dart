import 'package:flutter/material.dart';
import 'package:newshive/routes/route_names.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> tipsData = [
    {
      'image': '/images/intro_1.png',
      'title': 'Welcome!',
      'desc': 'lorem400 ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    },
    {
      'image': '/images/intro_2.png',
      'title': 'Track Progress',
      'desc': 'lorem400 ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    },
    {
      'image': '/images/intro_3.png',
      'title': 'Get Started',
      'desc': 'Let’s dive into productivity!'
    },
  ];

  void _nextPage({bool force = false}) {
    if (_currentIndex < tipsData.length - 1) {
      _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
    if(force || (_currentIndex == tipsData.length - 1)){
      Navigator.pushReplacementNamed(context, RouteNames.login); // Ganti dengan route yang sesuai
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // ganti dengan cWhite kalau pakai tema
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
          child: Column(
            spacing: 30,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: tipsData.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      spacing: 20,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 350,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(tipsData[index]['image']!),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 10,
                          children: [
                            Text(
                              tipsData[index]['title']!,
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            Text(
                              maxLines: 3,
                              tipsData[index]['desc']!,
                              style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
              ),
              // Indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(tipsData.length, (index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    width: _currentIndex == index ? 25 : 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: _currentIndex == index ? Colors.blue : Colors.blueGrey,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  );
                }),
              ),
              Spacer(),
              // Button: Skip + Next
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      _nextPage(force: true);
                    },
                    child: Text("Skip", style: TextStyle(color: Colors.grey[700])),
                  ),
                  ElevatedButton(
                    onPressed: _nextPage,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Text(
                      _currentIndex == tipsData.length - 1 ? "Done" : "Next",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
