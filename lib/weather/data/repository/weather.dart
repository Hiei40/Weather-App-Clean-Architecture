import 'package:cleanarch/weather/data/datasource/remote_datasource.dart';
import 'package:cleanarch/weather/domain/repository/Base_weather_repository.dart';

import '../../domain/entities/weather.dart';
class WeatherRepository implements BaseWeatherRepository{
 final RemoteDatasource remoteDatasource;

  WeatherRepository({required this.remoteDatasource});

  @override
  Future<Weather> getWeatherByCityName(String countryName) async{
return  (await remoteDatasource.getWeatherbyCountryName(countryName))!;
  }
}
