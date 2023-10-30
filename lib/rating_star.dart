import 'package:five_pointed_star/five_pointed_star.dart';
import 'package:flutter/material.dart';

class RatingStarRef extends StatefulWidget {
  const RatingStarRef({super.key});

  @override
  State<RatingStarRef> createState() => _RatingStarRefState();
}

class _RatingStarRefState extends State<RatingStarRef> {
  int ratingCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Five point Star'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FivePointedStar(
                  onChange: (count) {
                    setState(() {
                      ratingCount = count;
                      print('--------->Rating Count:$ratingCount');
                    });
                  },
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            Text(
              ratingCount.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
