import 'dart:convert';

import 'package:cleanarch/core/utils/constant.dart';
import 'package:cleanarch/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class BaseRemoteDatasource {
  Future<WeatherModel?> getWeatherbyCountryName(String countryName);
}

class RemoteDatasource implements BaseRemoteDatasource {
  @override
  Future<WeatherModel?> getWeatherbyCountryName(String countryName) async {
    try {

      var response = await Dio().get("${AppConstance.baseurl}/weather?q=$countryName&appid=${AppConstance.appKey}");
      if (kDebugMode) {
        print(response);
      }

      return WeatherModel.fromJson(json.decode(response.data));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null; // Return null in case of an exception
    }
  }
}
