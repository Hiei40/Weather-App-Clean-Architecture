import 'package:cleanarch/weather/domain/entities/weather.dart';

abstract class BaseWeatherRepository{
  Future<Weather>getWeatherByCityName(String cityName);
}