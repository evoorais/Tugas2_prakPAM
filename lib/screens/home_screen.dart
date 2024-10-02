import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final String username;

  HomeScreen({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Smartwatch E-Commerce', style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(
            icon: Icon(Icons.person, color: Colors.white,),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(username: username),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.network('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/digital-smart-watch-banner-design-template-d7aa954477c61d4aaf74a2001b70e98f_screen.jpg?ts=1652077676'),
                Image.network('https://akm-img-a-in.tosshub.com/businesstoday/images/story/202404/6626825995cfb-prowatch-by-lava-222928569-16x9.jpg?size=948:533'),
                Image.network('https://static.vecteezy.com/system/resources/previews/008/132/251/non_2x/smart-watch-horizontal-poster-vector.jpg'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Welcome, $username!',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.7,
              ),
              itemCount: 4, 
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network('https://static.vecteezy.com/system/resources/thumbnails/012/960/633/small/watch-poster-template-free-vector.jpg', height: 100, fit: BoxFit.cover),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Limited Edition - Rock Smartwatch'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('Rp 1.500.000'),
                      ),
                      Spacer(),
                      Center(
                        child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue, 
                                        foregroundColor: Colors.white, 
                                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                                        textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30), 
                                        ),
                                      ),                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(),
                              ),
                            );
                          },
                          child: Text('Beli'),
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
