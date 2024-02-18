
import 'package:flutter/material.dart';
import '../../Models/PrayerTimeCollection.dart';
import '../pages/DetailsScreen.dart';

class ListWidget extends StatelessWidget {
  PrayerTimeCollection item;

  ListWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(item: item)));
      },
      child: Container(
        height: 50,
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(item.date!.readable.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                ),
                Text('Tap to see details',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)
                ),
              ],
            )
        ),
      ),
    );
  }
}
