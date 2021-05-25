// import 'package:movieapp/domain/entities/address_entity.dart';
//
// class AddressModel extends AddressEntity {
//   final int id;
//   final String? street;
//   final String? streetName;
//   final String? buildingNumber;
//   final String? city;
//   final String? zipcode;
//   final String? country;
//   final String? countyCode;
//   final double? latitude;
//   final double? longitude;
//
//   AddressModel({
//     required this.id,
//     this.street,
//     this.streetName,
//     this.buildingNumber,
//     this.city,
//     this.zipcode,
//     this.country,
//     this.countyCode,
//     this.latitude,
//     this.longitude
//   }): super(
//       street: street,
//       id: id,
//       streetName: streetName,
//       buildingNumber: buildingNumber,
//       city: city,
//       zipcode: zipcode,
//       country: country,
//       countyCode: countyCode,
//       latitude: latitude,
//       longitude: latitude
//   );
//
//   factory AddressModel.fromJson(Map<String, dynamic> json) {
//     return AddressModel(street: json['street'], streetName, buildingNumber, city, zipcode, country, countyCode, latitude, longitude)
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['street'] = this.street;
//     data['streetName'] = this.streetName;
//     data['buildingNumber'] = this.buildingNumber;
//     data['city'] = this.city;
//     data['zipcode'] = this.zipcode;
//     data['country'] = this.country;
//     data['county_code'] = this.countyCode;
//     data['latitude'] = this.latitude;
//     data['longitude'] = this.longitude;
//     return data;
//   }
// }
