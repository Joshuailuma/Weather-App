import 'package:flutter/material.dart';

import '../helper/weather_api_manager.dart';
import '../model/weather_model.dart';

class WeatherDetails extends StatefulWidget {
  final String city;
  const WeatherDetails({
    Key? key,
    required this.city,
  }) : super(key: key);

  @override
  State<WeatherDetails> createState() => _WeatherDetailsState();
}

class _WeatherDetailsState extends State<WeatherDetails> {
  Future<Weather>? _weatherModel;

  ApiManager client = ApiManager();
  @override
  void initState() {
    _weatherModel = client.getWeather(widget.city);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Weather>(
        future: _weatherModel,
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            Weather? weatherData = snapshot.data;
            //Converting Kelvin to Celsius
            double firstTemp = weatherData!.temp! - 273;

            //Rounding off the final number
            int temp = firstTemp.ceil();

            return Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue.shade900,
                    Colors.lightBlue,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  children: [ 
                   const SizedBox(
                      height: 50,
                    ),
                     
                    Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 25, 
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        weatherData.city!,
                        style: const TextStyle(fontSize: 28, 
                        color: Colors.white),
                      ),
                    ),
                   const SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        temp.toString() + '°C',
                        style: const TextStyle(
                          fontSize: 70,
                        color: Colors.white),
                      ),
                    ),
                   const SizedBox(
                      height: 70,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        weatherData.main!,
                        style: const TextStyle(fontSize: 25,
                        color: Colors.white),
                      ),
                    ),
                   const SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                       'Lat: ' + weatherData.lat.toString() +',' +'\u{00A0}' + '\u{00A0}' + 'Long: ' + weatherData.lon.toString(),
                        style: const TextStyle(fontSize: 20,
                        color: Colors.white),
                      ),
                    ),
                  const  SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                       const Text(
                          'Clouds',
                          style: TextStyle(fontSize: 20,
                          color: Colors.white),
                        ),
                       const Spacer(),
                        Text(
                          weatherData.clouds.toString(),
                          style: const TextStyle(fontSize: 20,
                          color: Colors.white),
                        ),
                      ],
                    ),
                  const  SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                      const  Text(
                          'Wind Speed',
                          style: TextStyle(fontSize: 20,
                          color: Colors.white),
                        ),
                       const Spacer(),
                        Text(
                          weatherData.windSpeed.toString(),
                          style: const TextStyle(fontSize: 20,
                          color: Colors.white),
                        ),
                      ],
                    ),
                   const SizedBox(height: 30),
                    Row(
                      children: [
                      const  Text(
                          'Humidity',
                          style: TextStyle(fontSize: 20,
                          color: Colors.white),
                        ),
                      const  Spacer(),
                        Text(
                          weatherData.humidity.toString(),
                          style: const TextStyle(fontSize: 20,
                          color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );

          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
