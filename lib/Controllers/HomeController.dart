
import 'package:mvc_pattern/mvc_pattern.dart';

import '../Models/PrayerTimeCollection.dart';
import '../Repository/PrayerRepository.dart';

class HomeController extends ControllerMVC{

  HomeController();

  List<PrayerTimeCollection> prayer_time_list = [];


  void listenForPrayerTimeCollection() async {
    final Stream<PrayerTimeCollection> stream = await getPrayerTimeCollection();
    stream.listen((PrayerTimeCollection _item) {
      setState(() {
        prayer_time_list.add(_item);
      });
    }, onError: (a) {
      print(a);
    });
  }



}