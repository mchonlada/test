import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GUESS THE NUMBER'),
      ),

      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.person,       // รูปไอคอน
                  size: 80.0,         // ขนาดไอคอน
                  color: Colors.pink, // สีไอคอน
                ),

                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'ชลลดา เศวตกิตติกุล',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,      // รูปไอคอน
                            size: 30.0,         // ขนาดไอคอน
                            color: Colors.pink, // สีไอคอน
                          ),
                          Icon(
                            Icons.star,       // รูปไอคอน
                            size: 30.0,         // ขนาดไอคอน
                            color: Colors.pink, // สีไอคอน
                          ),Icon(
                            Icons.star,       // รูปไอคอน
                            size: 30.0,         // ขนาดไอคอน
                            color: Colors.pink, // สีไอคอน
                          ),
                          Icon(
                            Icons.star,       // รูปไอคอน
                            size: 30.0,         // ขนาดไอคอน
                            color: Colors.pink, // สีไอคอน
                          ),
                          Icon(
                            Icons.star_border,       // รูปไอคอน
                            size: 30.0,         // ขนาดไอคอน
                            color: Colors.pink, // สีไอคอน
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 105, horizontal: 20.0),
              child: Text(
                '${Random().nextInt(100)+1}',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                  fontSize: 218.0,
                  color: Colors.pink,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                  Padding(
                    padding: const EdgeInsets.all(0.8),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text('RANDOM'),
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
