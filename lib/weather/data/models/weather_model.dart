import 'dart:convert';

import '../../domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel({
    super.id,
    super.cityName,
    super.main,
    super.description,
    super.pressure,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      id: json['id'],
      cityName: json['name'],
      main: json['weather'][0]['main'],
      description: json['weather'][0]['description'],
      pressure: json['main']['pressure'],
    );
  }
}
