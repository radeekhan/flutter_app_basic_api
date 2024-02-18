
import 'dart:convert';
import '../Models/PrayerTimeCollection.dart';
import 'package:http/http.dart' as http;


Future<Stream<PrayerTimeCollection>> getPrayerTimeCollection() async {

  final String url = 'http://api.aladhan.com/v1/calendar/2017/4?latitude=51.508515&longitude=-0.1254872&method=2';

  final client = http.Client();
  final request = http.Request("get", Uri.parse(url));
  final streamedRest = await client.send(request);


  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) =>  getData(data) )
      .expand((data) => (data as List))
      .map((data) {
    return PrayerTimeCollection.fromJson(data);
  });

}

 getData(dynamic data) {
  return data['data'] ?? [];
}