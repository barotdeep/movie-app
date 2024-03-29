import 'package:flutter/material.dart';
import 'package:movieapp/components/side_menu.dart';
import 'package:movieapp/responsive.dart';
import 'package:movieapp/screens/address/address_screen.dart';
import 'package:movieapp/screens/main/components/list_of_addresses.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        // Let's work on our mobile part
        mobile: ListOfAddresses(),
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: ListOfAddresses(),
            ),
            Expanded(
              flex: 9,
              child: AddressScreen(),
            ),
          ],
        ),
        desktop: Row(
          children: [
            // Once our width is less then 1300 then it start showing errors
            // Now there is no error if our width is less then 1340
            Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: SideMenu(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 3 : 5,
              child: ListOfAddresses(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 8 : 10,
              child: AddressScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
