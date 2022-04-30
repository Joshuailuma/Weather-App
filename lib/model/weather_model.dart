class Weather {
  final String? city;
  final num? temp;
  final String? main;
  final num? lat;
  final num? lon;
  final int? clouds;
  final double? windSpeed;
  final int? humidity;

  Weather(
      {
        required this.temp,
      required this.main,
      required this.lat,
      required this.lon,
      required this.clouds,
      required this.windSpeed,
      required this.humidity,
      required this.city
      });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      humidity: json['main']['humidity'] ?? '',
      temp: json['main']['temp'] ?? '',
      main: json['weather'][0]['description'] ?? '',
      lat: json['coord']['lat'] ?? '',
      lon: (json['coord']['lon'] != null) ? json['coord']['lon'] : int.tryParse(json['coord']['lon']),
      clouds: json['clouds']['all'] ?? '',
      windSpeed: json['wind']['speed'] ?? '',
      city: json['name'] ?? '',
    );
  }
}
