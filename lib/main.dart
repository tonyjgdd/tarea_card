import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //only can be one MaterialApp in all code
    const avatar = 'asset/iam.png';
    const name='Tony Josue';
    const lastname='Gutierrez Dongo';
    const profesion='Flutter Developer';
    const number_cel='+51 956671363';
    const email='tonyjgdd@gmail.com';
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
                  backgroundImage: AssetImage(avatar),
                  radius: 80,
                ),
                const SizedBox(height: 20),
                   const Text(
                    lastname+' '+name
                    ) ,
                     const Text(
                    profesion
                    ) ,

                const SizedBox(height: 25),
                Card(
                   margin: const EdgeInsets.only(bottom: 16),
                  //elevation: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Row(
                         // mainAxisAlignment:MainAxisAlignment.center,
                         mainAxisSize: MainAxisSize.min,
                          children: [
                               Icon(Icons.phone),
                               const SizedBox(width: 85),
                            Column(
                              children: const [
                                Text(number_cel),
                                Text('telefono'),
                              ],
                            ),
                             const SizedBox(width: 85),
                               Icon(Icons.check_circle),
                          ],
                        ),
                      ],
                    ),
                  ),

                ),
                   
                     Card(
                   margin: const EdgeInsets.only(bottom: 16),
                  //elevation: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Row(
                         // mainAxisAlignment:MainAxisAlignment.center,
                         mainAxisSize: MainAxisSize.min,
                          children: [
                               Icon(Icons.email),
                               const SizedBox(width: 68),
                            Column(
                              children: const [
                                Text(email),
                                Text('email - correo'),
                              ],
                            ),
                             const SizedBox(width: 68),
                               Icon(Icons.check_circle),
                               
                          ],
                          
                        ),
                        
                      ],
                      
                    ),
                    
                  ),

                ),

const SizedBox(height: 58),


                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    const SizedBox(),
                    Image.asset(
                      'asset/fb.png',
                      height: 60,
                    ),
                    
                               const SizedBox(width: 15),
                    Image.asset(
                      'asset/ghb.png',
                      height: 60,
                    ),
                        const SizedBox(width: 15),
                    Image.asset(
                      'asset/wsp.png',
                      height: 60,
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
