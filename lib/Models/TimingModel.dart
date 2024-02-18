
class TimingModel{
  String? fajr;
  String? sunrise;
  String? dhuhr;
  String? asr;
  String? sunset;
  String? maghrib;
  String? isha;
  String? imsak;
  String? midnight;
  String? firstthird;
  String? lastthird;


  TimingModel();

  TimingModel.fromJson(Map<String, dynamic> json) {
    try{
      fajr = json['Fajr'];
      sunrise = json['Sunrise'];
      dhuhr = json['Dhuhr'];
      asr = json['Asr'];
      sunset = json['Sunset'];
      maghrib = json['Maghrib'];
      isha = json['Isha'];
      imsak = json['Imsak'];
      midnight = json['Midnight'];
      firstthird = json['FirstThird'];
      lastthird = json['LastThird'];
    }
    catch(e){
      print(e);
    }

  }


}