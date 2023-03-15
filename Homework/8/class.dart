class IpInfo {
  late String ip;
  late String city;
  late String region;
  late String country;
  late String loc;
  late String org;
  late String postal;
  late String timezone;
  late String readme;


  IpInfo(this.ip, this.city, this.region, this.country, this.loc, this.org,
      this.postal, this.timezone, this.readme);

  IpInfo.fromJson(Map<String, dynamic> json)  {
    ip = json['ip'];
    city = json['city'];
    region = json['region'];
    country = json['country'];
    loc = json['loc'];
    org = json['org'];
    postal = json['postal'];
    timezone = json['timezone'];
    readme = json['readme'];
  }

  @override
  String toString() {
    return 'IpInfo{ip: $ip, city: $city, region: $region, country: $country, loc: $loc, org: $org, postal: $postal, timezone: $timezone, readme: $readme}';
  }
}