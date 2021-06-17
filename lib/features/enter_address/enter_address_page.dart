import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EnterAddressPage {
  static const String routeName = 'enter-address';
  static Route<void> route() {
    return MaterialPageRoute(
      fullscreenDialog: true,
      settings: RouteSettings(name: routeName),
      builder: (context) => const EnterAddressScreen(),
    );
  }
}

class EnterAddressScreen extends StatelessWidget {
  const EnterAddressScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(),
        backgroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Use Current Location'),
        icon: Icon(Icons.gps_fixed),
        backgroundColor: Color(0xFF364b68),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        itemCount: 8,
        itemBuilder: (context, index) => const AddressListTile(),
        separatorBuilder: (context, index) => const Divider(
          color: Colors.black26,
          indent: 64.0,
        ),
      ),
    );
  }
}

class AddressListTile extends StatelessWidget {
  const AddressListTile();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 21.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  const Gap(4.0),
                  Icon(
                    Icons.location_pin,
                    color: Color(0xFF364b68),
                  ),
                ],
              ),
              const Gap(24.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Project 8',
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Color(0xFF364b68)),
                    ),
                    Text(
                      'Munoz, LRT Roosevelt Station, Quezon City, Philippines',
                      style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
