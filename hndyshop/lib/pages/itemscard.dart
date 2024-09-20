import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class items extends StatelessWidget {
  const items({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Card List Example'), centerTitle: true,),
        body: CardList(),
      ),
    );
  }
}

class CardList extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'image': 'https://images.pexels.com/photos/28277461/pexels-photo-28277461/free-photo-of-a-road-in-the-middle-of-a-forest-with-fog.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
      'rating': 4.5,
      'name': 'Item 1',
      'description': 'Description for item 1',
    },
    {
      'image': 'https://images.pexels.com/photos/27835751/pexels-photo-27835751/free-photo-of-a-tree-with-green-apples-on-it.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
      'rating': 4.0,
      'name': 'Item 2',
      'description': 'Description for item 2',
    },
    {
      'image': 'https://images.pexels.com/photos/20821498/pexels-photo-20821498/free-photo-of-a-cake-on-a-table.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
      'rating': 3.5,
      'name': 'Item 3',
      'description': 'Description for item 3',
    },
    {
      'image': 'https://images.pexels.com/photos/28260042/pexels-photo-28260042/free-photo-of-hotcakes.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
      'rating': 5.0,
      'name': 'Item 4',
      'description': 'Description for item 4',
    },
    {
      'image': 'https://images.pexels.com/photos/27779028/pexels-photo-27779028/free-photo-of-a-view-of-a-small-town-on-the-water-with-mountains-in-the-background.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'rating': 4.8,
      'name': 'Item 5',
      'description': 'Description for item 5',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Card(
          shadowColor: Colors.grey[800],
          child: Column(
            children: [
              Image.network(
                item['image'],
                height: 200,
                width: 200,
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['name'],
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    RatingBarIndicator(
                      rating: item['rating'],
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 20.0,
                      direction: Axis.horizontal,
                    ),
                    SizedBox(height: 8),
                    Text(item['description']),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}