class HeartRate {
  double max;
  double lowerNormal;
  double lowerHealthy;
  double upperHealthy;
  double upperNormal;

  HeartRate._(this.max, this.lowerNormal, this.lowerHealthy, this.upperHealthy, this.upperNormal);

  factory HeartRate({required int age}) {
    double max = (220 - age) as double;
    return HeartRate._(max, 60, max * 0.5, max * 0.7, max * 0.85);
  }
}