import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // Background Image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/Wallpaper.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Foreground Widgets
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset('images/qu.png', width: 200, height: 150),
                        SizedBox(height: 10),
                        Text(
                          'iti quiz app',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'we are creativ, enjoy our App',
                          style: TextStyle(
                            fontFamily: 'DancingScript',
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 300),
                ElevatedButton(
                  onPressed: () {
                    // Add your button logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    minimumSize: Size(MediaQuery.of(context).size.width, 50),
                  ),
                  child: Text(
                    'start',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
