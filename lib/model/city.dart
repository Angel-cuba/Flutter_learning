class City {
  final String id;
  final String name;
  final String country;
  final String timezone;
  final String language;
  final String state;
  final String adminArea;
  final String adminArea2;
  final String adminArea3;
  final String lon;
  final String lat;

  City({
    required this.id,
    required this.name,
    required this.country,
    required this.timezone,
    required this.language,
    required this.state,
    required this.adminArea,
    required this.adminArea2,
    required this.adminArea3,
    required this.lon,
    required this.lat,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['id'],
      name: json['name'],
      country: json['country'],
      timezone: json['timezone'],
      language: json['language'],
      state: json['state'],
      adminArea: json['adminArea'],
      adminArea2: json['adminArea2'],
      adminArea3: json['adminArea3'],
      lon: json['lon'],
      lat: json['lat'],
    );
  }
}
