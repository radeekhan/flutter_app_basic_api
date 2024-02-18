
class MethodModel{
  int? id;
  String? name;
  int? fajr;
  int? isha;
  double? latitude;
  double? longitude;

  MethodModel();

  MethodModel.fromJson(Map<String, dynamic> json) {
    try{
      id = json['id'];
      name = json['name'];
      fajr = json['fajr'];
      isha = json['isha'];
      latitude = json['latitude'];
      longitude = json['longitude'];
    }
    catch(e){
      print(e);
    }

  }

}