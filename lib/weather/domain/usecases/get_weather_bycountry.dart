import 'package:cleanarch/weather/domain/repository/Base_weather_repository.dart';

import '../../data/repository/weather.dart';

class GetWeatherBycountry{
final WeatherRepository repository;

  GetWeatherBycountry({required this.repository});

excute(String cityName){

  return repository.getWeatherByCityName(cityName);

}

}