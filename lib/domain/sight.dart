import 'package:places/domain/time_of_visit.dart';

class Sight {
  Sight({
    required this.name,
    required this.lat,
    required this.lon,
    this.url,
    this.details,
    this.type,
    this.workTime,

    required this.timeOfVisit,
  });

  String name;
  double lat;
  double lon;
  String? url;
  String? details;
  String? type;
  String? workTime;
  String? dateVisit;
  String? dateToVisit;

  TimeOfVisit timeOfVisit;
}
