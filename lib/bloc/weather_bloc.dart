import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/weather_event.dart';
import 'package:weather_app/bloc/weather_state.dart';
import 'package:weather_app/services/weather_services.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherServices weatherService;
  WeatherBloc(this.weatherService) : super(WeatherIntial()) {
    on<FetchWeather>((event, emit) async {
      emit(WeatherLoading());
      try {
        final data = await weatherService.getWeather(event.city);
        emit(WeatherLoaded(data));
      } catch (error) {
        emit(WeatherFailure("Failed to get weather"));
      }
    });
  }
}
