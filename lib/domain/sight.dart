class Sight {
  String name;
  String lat;
  String lon;
  String? url;
  String? details;
  String? type;

  Sight({
    required this.name,
    required this.lat,
    required this.lon,
    this.url,
    this.details,
    this.type
  });
}
