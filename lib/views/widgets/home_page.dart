import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.clear),
                border: OutlineInputBorder(),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Headlines'),
                Text('Top Stories'),
                Text('Latest News'),
              ],
            ),
            // Carousel Section
            Container(
              constraints: const BoxConstraints(
                maxHeight: 200,
              ),
              child: CarouselView(
                itemSnapping: true,
                itemExtent: double.infinity,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://via.assets.so/img.jpg?w=200&h=150&tc=blue&bg=#cecece'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
