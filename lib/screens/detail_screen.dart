import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Limited Edition - Rock Smartwatch',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
                'https://static.vecteezy.com/system/resources/thumbnails/012/960/633/small/watch-poster-template-free-vector.jpg',
                height: 200,
                fit: BoxFit.cover),
            SizedBox(height: 10),
            Text('Limited Edition - Rock Smartwatch',
                style: TextStyle(fontSize: 22)),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Text('4.5', style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(height: 10),
            Text(
                'Layar AMOLED 1.78 inci: Layar tajam dengan resolusi tinggi yang memudahkan Anda melihat notifikasi, aktivitas, dan waktu dengan jelas, bahkan di bawah sinar matahari.\n \n Tahan Air (5ATM): Dengan ketahanan air hingga 50 meter, Anda bisa memakai Rock Smartwatch saat berenang atau terkena hujan tanpa khawatir. \n \n Monitor Kesehatan: Pantau detak jantung, kualitas tidur, oksigen dalam darah (SpO2), dan tingkat stres Anda dalam satu sentuhan.'),
            Spacer(),
            Text('Price: Rp 1.500.000', style: TextStyle(fontSize: 18)),
            Container(
              width: double.infinity,
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
                    borderRadius:
                        BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Pembelian berhasil!')),
                  );
                },
                child: Text('Buy'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
