import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:weather_app/model/weather_model.dart';


class ApiManager {
  Future<Weather> getWeather(String place) async {
    String weatherUrl =
        'http://api.openweathermap.org/data/2.5/weather?q=${place}&appid=c447e9c3e98fd372f61cf2825c6b9860&fbclid=IwAR2EBgj_ZfqI0CebAq7_qgTHH8o1PTVUzvFiIcVRxyGGRdahXCQRmsSHy64';

    final response = await http.get(Uri.parse(weatherUrl));

    if (response.statusCode == 200) {
      var jsonString = response.body; //Raw data
      

      var ourMap = json.decode(jsonString);
      //Has been converted to map
      
      var weatherModel = Weather.fromJson(
          ourMap); //So we can assign the real data from the internet into the models created
     
      return weatherModel;
    } else {
      throw Exception(Exception);
    }
  }
}
