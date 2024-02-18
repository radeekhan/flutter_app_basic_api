
import 'DateFormatModel.dart';

class DateModel {
  String? readable;
  String? timestamp;
  DateFormatModel? gregorian;
  DateFormatModel? hijri;


  DateModel();

  DateModel.fromJson(Map<String, dynamic> json) {
    try{
      readable = json['readable'];
      timestamp = json['timestamp'];
      gregorian = DateFormatModel.fromJson(json['gregorian']);
      hijri = DateFormatModel.fromJson(json['hijri']);
    }
    catch(e){
      print(e);
    }

  }



}