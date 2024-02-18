
import 'MetaModel.dart';
import 'DateModel.dart';

class PrayerTimeCollection{
  Map<String, String>? timings;
  DateModel? date;
  MetaModel? meta;

  PrayerTimeCollection();

  PrayerTimeCollection.fromJson(Map<String, dynamic> json) {
    try{
      timings = Map.from(json['timings']);
      date = DateModel.fromJson(json['date']);
      meta = MetaModel.fromJson(json['meta']);
    }
    catch(e){
      print(e);
    }

  }




}