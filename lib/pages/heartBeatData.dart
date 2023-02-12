import 'package:collection/collection.dart';

class HeartBeat{
  final double x;
  final double y;
  HeartBeat({required this.x, required this.y});
}

List<HeartBeat> get heartBeatData{
  final data = <double>[80,75,95];
  return data
      .mapIndexed(
      ((index, element) => HeartBeat(x: index.toDouble(), y: element)))
      .toList();
}