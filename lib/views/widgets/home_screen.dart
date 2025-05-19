import 'package:flutter/material.dart';
import 'package:newshive/views/widgets/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int indexScreen = 0;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("HOME",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          leading: Image.network("assets/images/logo.png"),
        ),
        body: IndexedStack(
          index: indexScreen,
          children: [
            HomePage()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexScreen,
          onTap: (index) {
            setState(() {
              indexScreen = index;
            }); // Uncomment this line if using StatefulWidget
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        )
    );
  }
}
