class Assets {
  late Map<String, Map> data;
  late String id;
  late String rank;
  late String symbol;
  late String name;
  late String supply;
  late String maxSupply;
  late String marketCapUsd;
  late String volumeUsd24Hr;
  late String priceUsd;
  late String changePercent24Hr;
  late String vwap24Hr;
  late String explorer;
  late int timestamp;


  Assets(
      this.data,
      this.id,
      this.rank,
      this.symbol,
      this.name,
      this.supply,
      this.maxSupply,
      this.marketCapUsd,
      this.volumeUsd24Hr,
      this.priceUsd,
      this.changePercent24Hr,
      this.vwap24Hr,
      this.explorer,
      this.timestamp);

  Assets.fromJson(Map<String, dynamic> json)  {
    data = json['data'];
    id = json['id'];
    rank = json['rank'];
    symbol = json['symbol'];
    name = json['name'];
    supply = json['supply'];
    maxSupply = json['maxSupply'];
    marketCapUsd = json['marketCapUsd'];
    volumeUsd24Hr = json['volumeUsd24Hr'];
    priceUsd = json['priceUsd'];
    changePercent24Hr = json['changePercent24Hr'];
    vwap24Hr = json['vwap24Hr'];
    explorer = json['explorer'];
    timestamp = json['timestamp'];
  }

  @override
  String toString() {
    return 'Assets{data: $data, id: $id, rank: $rank, symbol: $symbol, name: $name, supply: $supply, maxSupply: $maxSupply, marketCapUsd: $marketCapUsd, volumeUsd24Hr: $volumeUsd24Hr, priceUsd: $priceUsd, changePercent24Hr: $changePercent24Hr, vwap24Hr: $vwap24Hr, explorer: $explorer, timestamp: $timestamp}';
  }
}