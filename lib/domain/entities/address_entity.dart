import 'package:equatable/equatable.dart';

class AddressEntity extends Equatable {
  final String id;
  final String street;
  final String streetName;
  final String buildingNumber;
  final String city;
  final String zipcode;
  final String country;
  final String countyCode;
  final double latitude;
  final double longitude;

  const AddressEntity(
      {required this.id,
      required this.street,
      required this.streetName,
      required this.buildingNumber,
      required this.city,
      required this.zipcode,
      required this.country,
      required this.countyCode,
      required this.latitude,
      required this.longitude});

  @override
  // TODO: implement props
  List<Object?> get props => [id];

  @override
  bool get stringify {
    return true;
  }
}
