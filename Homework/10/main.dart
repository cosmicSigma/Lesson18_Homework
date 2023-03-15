import 'dart:convert';
import 'class.dart';
import 'network.dart';

void main () {
  final Network http = Network();
  http.get(http.baseUrl, http.apiAssets).then((value) => parseJsonAssets(value));
  http.close();
}

void parseJsonAssets(String data) {
  Map<String, dynamic> json = jsonDecode(data);
  Assets assets = Assets.fromJson(json);
  print(assets.data);
  print(assets.id);
  print(assets.rank);
  print(assets.symbol);
  print(assets.name);
  print(assets.supply);
  print(assets.maxSupply);
  print(assets.marketCapUsd);
  print(assets.volumeUsd24Hr);
  print(assets.priceUsd);
  print(assets.changePercent24Hr);
  print(assets.vwap24Hr);
  print(assets.explorer);
  print(assets.timestamp);
  print(assets);
}