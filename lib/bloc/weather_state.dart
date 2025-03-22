class WeatherState {}

class WeatherIntial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  Map<String, dynamic> weatherData;
  WeatherLoaded(this.weatherData);
}

class WeatherFailure extends WeatherState {
  final String message;
  WeatherFailure(this.message);
}
