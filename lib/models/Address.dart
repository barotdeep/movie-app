import 'package:flutter/material.dart';

class Address {
  final String street,
      streetName,
      city,
      zipCode,
      buildingNumber,
      country,
      countryCode;
  final double latitude, longitude;

  Address({
    required this.street,
    required this.streetName,
    required this.city,
    required this.zipCode,
    required this.buildingNumber,
    required this.country,
    required this.countryCode,
    required this.latitude,
    required this.longitude,
  });
}

List<Address> addresses = List.generate(
  demo_data.length,
  (index) => Address(
      street: demo_data[index]['street'],
      streetName: demo_data[index]['streetName'],
      city: demo_data[index]['city'],
      zipCode: demo_data[index]['zipcode'],
      buildingNumber: demo_data[index]['buildingNumber'],
      country: demo_data[index]['country'],
      countryCode: demo_data[index]['county_code'],
      latitude: demo_data[index]['latitude'],
      longitude: demo_data[index]['longitude']),
);

List demo_data = [
  {
    "street": "285 Alisa Via Suite 688",
    "streetName": "Nikko Mission",
    "buildingNumber": "885",
    "city": "Kayaborough",
    "zipcode": "32105",
    "country": "Uruguay",
    "county_code": "ME",
    "latitude": 42.466286,
    "longitude": 83.485899
  },
  {
    "street": "918 Douglas Viaduct",
    "streetName": "Jose Junction",
    "buildingNumber": "5751",
    "city": "Jarenview",
    "zipcode": "14878",
    "country": "Niue",
    "county_code": "IR",
    "latitude": -46.035382,
    "longitude": -51.161374
  },
  {
    "street": "76079 O'Kon Forks Apt. 867",
    "streetName": "Bruen Glen",
    "buildingNumber": "86870",
    "city": "Lake Mortimerberg",
    "zipcode": "65264",
    "country": "Slovakia (Slovak Republic)",
    "county_code": "GN",
    "latitude": -29.476355,
    "longitude": 24.637353
  },
  {
    "street": "33494 Esta Loop",
    "streetName": "Juston Viaduct",
    "buildingNumber": "2032",
    "city": "North Watson",
    "zipcode": "56181-3432",
    "country": "Sudan",
    "county_code": "JO",
    "latitude": 75.203301,
    "longitude": 54.543629
  },
  {
    "street": "93300 Michel Club",
    "streetName": "Daniel Canyon",
    "buildingNumber": "90531",
    "city": "Brendaview",
    "zipcode": "61162-2379",
    "country": "Armenia",
    "county_code": "VA",
    "latitude": -59.14575,
    "longitude": -128.131786
  },
  {
    "street": "44064 Nikolaus Track",
    "streetName": "Eriberto Loop",
    "buildingNumber": "42520",
    "city": "North Mollie",
    "zipcode": "52172",
    "country": "Chad",
    "county_code": "NL",
    "latitude": -50.548169,
    "longitude": -50.265487
  },
  {
    "street": "368 Anika Island Suite 708",
    "streetName": "Rowland Fall",
    "buildingNumber": "862",
    "city": "Lake Corineville",
    "zipcode": "44116",
    "country": "Chad",
    "county_code": "CK",
    "latitude": 69.404935,
    "longitude": -104.648998
  },
  {
    "street": "8893 Strosin Falls Apt. 055",
    "streetName": "Spencer Inlet",
    "buildingNumber": "867",
    "city": "Rasheedburgh",
    "zipcode": "11810-8794",
    "country": "Saint Pierre and Miquelon",
    "county_code": "GY",
    "latitude": -64.190617,
    "longitude": -45.515105
  },
  {
    "street": "378 Kessler Passage",
    "streetName": "Hirthe Court",
    "buildingNumber": "662",
    "city": "North Eunice",
    "zipcode": "34054-4122",
    "country": "Niue",
    "county_code": "CM",
    "latitude": -63.55177,
    "longitude": 2.761298
  },
  {
    "street": "8822 Romaguera Via Suite 775",
    "streetName": "Conor Stravenue",
    "buildingNumber": "1333",
    "city": "Morarfort",
    "zipcode": "87333",
    "country": "Bahrain",
    "county_code": "BF",
    "latitude": -87.299452,
    "longitude": 143.527052
  }
];
