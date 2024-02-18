
import 'package:flutter/material.dart';

import '../../Models/PrayerTimeCollection.dart';

class DetailsScreen extends StatefulWidget {
  PrayerTimeCollection item;

  DetailsScreen({required this.item});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Timings:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,height: 2)),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.item.timings!.entries.map((e) => Text('${e.key}: ${e.value}')).toList(),
            ),
            Text('Date: ${widget.item.date!.readable}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,height: 2)),
            Text('hijri:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,height: 2)),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('date: ${widget.item.date!.hijri!.date}'),
                  Text('day: ${widget.item.date!.hijri!.day}'),
                  Text('abbreviated: ${widget.item.date!.hijri!.abbreviated}'),
                  Text('format: ${widget.item.date!.hijri!.format}'),
                  Text('month: ${widget.item.date!.hijri!.month}'),
                  Text('weekday: ${widget.item.date!.hijri!.weekday}'),
                  Text('expanded: ${widget.item.date!.hijri!.expanded}'),
                  Text('year: ${widget.item.date!.hijri!.year}'),
                  Text('holidays: ${widget.item.date!.hijri!.holidays}'),
                ]
            ),
            Text('Meta:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,height: 2)),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text('latitude: ${widget.item.meta!.latitude}'),
                  Text('longitude: ${widget.item.meta!.longitude}'),
                  Text('timezone: ${widget.item.meta!.timezone}'),
                  Text('method: ${widget.item.meta!.method!.name}'),
                  Text('latitudeAdjustmentMethod: ${widget.item.meta!.latitudeAdjustmentMethod}'),
                  Text('midnightMode: ${widget.item.meta!.midnightMode}'),
                  Text('school: ${widget.item.meta!.school}'),
                ]
            ),

              ]
            ),
      ),
      );

  }





}
