
class DateFormatModel {
  String? date;
  String? format;
  String? day;
  String? weekday;
  String? month;
  String? year;
  String? abbreviated;
  String? expanded;
  List<dynamic>? holidays;

  DateFormatModel();


  DateFormatModel.fromJson(Map<String, dynamic> json) {
    try{
      date = json['date'];
      format = json['format'];
      day = json['day'];
      weekday = json['weekday']['en'];
      month = json['month']['en'];
      year = json['year'];
      abbreviated = json['designation']['abbreviated'];
      expanded = json['designation']['expanded'];
      holidays = json['holidays'];
    }
    catch(e){
      print(e);
    }

  }



}