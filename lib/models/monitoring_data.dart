class Parameters {
  double c_rate;
  double current;
  String date;
  int soc;
  int soh;
  int temperature;
  String time;
  double voltage;

  Parameters(this.c_rate, this.current, this.date, this.soc, this.soh,
      this.temperature, this.time, this.voltage);

  factory Parameters.fromMap(Map<String, dynamic> map) {
    return Parameters(
      map['C-Rate']?.toDouble() ?? 0.0,
      map['Current']?.toDouble() ?? 0.0,
      map['Date'] ?? '',
      map['SoC'] ?? 0,
      map['SoH'] ?? 0,
      map['Temperature'] ?? 0,
      map['Time'] ?? '',
      map['Voltage']?.toDouble() ?? 0.0,
    );
  }
}
