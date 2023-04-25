import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //only can be one MaterialApp in all code
    const avatar = 'https://picsum.photos/600';
    return MaterialApp(
      //ctrl+space to find all methods
      home: Scaffold(
        //color in exadecimal,always star to 0x
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              
                const CircleAvatar(
                  backgroundImage: NetworkImage(avatar),
                  radius: 80,
                ),
                const SizedBox(height: 50),
                Card(
                   margin: const EdgeInsets.only(bottom: 16),
                  //elevation: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Text('Tony Gutierrez Dongo'),
                        Icon(Icons.flutter_dash),
                      ],
                    ),
                  ),
                ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'asset/fb.png',
                      height: 32,
                    ),
                    Image.asset(
                      'asset/ghb.png',
                      height: 32,
                    ),
                    Image.asset(
                      'asset/wsp.png',
                      height: 32,
                    ),
                  ],
                ),
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}
