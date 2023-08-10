import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Wallpaper.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Columns
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.white.withOpacity(0.8),
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'مرحبًا بك في التطبيق',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    // إضافة المزيد من العناصر هنا
                    ElevatedButton(
                      onPressed: () {
                        // إضافة إجراء الزر هنا
                      },
                      child: Text('زر الإجراء'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
