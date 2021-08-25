class Sight {
  Sight({
    required this.name,
    required this.lat,
    required this.lon,
    this.url,
    this.details,
    this.type,
    this.workTime,
    // todo implement class for date visit and date visited
    this.dateToVisit,
    this.dateVisit,
  });

  String name;
  String lat;
  String lon;
  String? url;
  String? details;
  String? type;
  String? workTime;
  String? dateVisit;
  String? dateToVisit;
}
