
import 'MethodModel.dart';

class MetaModel{
  double? latitude;
  double? longitude;
  String? timezone;
  MethodModel? method;
  String? latitudeAdjustmentMethod;
  String? midnightMode;
  String? school;
  Map<String, int>? offset;

  MetaModel();

  MetaModel.fromJson(Map<String, dynamic> json) {
    try{
      latitude = json['latitude'];
      longitude = json['longitude'];
      timezone = json['timezone'];
      method = MethodModel.fromJson(json['method']);
      latitudeAdjustmentMethod = json['latitudeAdjustmentMethod'];
      midnightMode = json['midnightMode'];
      school = json['school'];
      offset = Map.from(json['offset']);
    }
    catch(e){
      print(e);
    }
  }



}