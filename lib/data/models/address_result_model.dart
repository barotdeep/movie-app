// import 'address_model.dart';
//
// class AddressResultModel {
//   late final List<AddressModel> addresses;
//
//   AddressResultModel({required this.addresses});
//
//   factory AddressResultModel.fromJson(Map<String, dynamic> json) {
//     var addresses = List<AddressModel>.empty(growable: true);
//     if (json['results'] != null) {
//       json['results'].forEach((v) {
//         final AddressModel = AddressModel.fromJson(v);
//         if (_isValidMovie(AddressModel)) {
//           addresses.add(AddressModel);
//         }
//       });
//     }
//     return AddressResultModel(addresses: addresses);
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['results'] = this.addresses.map((v) => v.toJson()).toList();
//     return data;
//   }
// }
//
// bool _isValidMovie(AddressModel AddressModel) {
//   // ignore: unrelated_type_equality_checks
//   return AddressModel.street.isNotEmpty &&
//       AddressModel.country.isNotEmpty &&
//       AddressModel.city.isNotEmpty &&
//       AddressModel.zipcode.isNotEmpty;
// }
