import 'dart:convert';
import 'class.dart';
import 'network.dart';

void main () {
  final Network http = Network();
  http.get(http.baseUrl, http.apiIpInfo).then((value) => parseJsonIpInfo(value));
  http.close();
}

void parseJsonIpInfo(String data) {
  Map<String, dynamic> json = jsonDecode(data);
  IpInfo ipInfo = IpInfo.fromJson(json);
  print(ipInfo.ip);
  print(ipInfo.city);
  print(ipInfo.region);
  print(ipInfo.country);
  print(ipInfo.loc);
  print(ipInfo.org);
  print(ipInfo.postal);
  print(ipInfo.timezone);
  print(ipInfo.readme);
  print(ipInfo);
}