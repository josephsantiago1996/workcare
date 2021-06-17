import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:workcare/service_cart/view/address_picker_page.dart';

class SavedPlacesFormPage {
  static const String routeName = '';
  static Route<void> route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => SavedPlacesFormScreen(),
    );
  }
}

class SavedPlacesFormScreen extends StatelessWidget {
  const SavedPlacesFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Places'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const Gap(2.0),
                      TextField(
                        autofocus: true,
                        decoration: InputDecoration.collapsed(
                          hintText: 'e.g. Home',
                          hintStyle: Theme.of(context).textTheme.caption,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                InkWell(
                  onTap: () => Navigator.of(context).push(AddressPickerPage.route()),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Address',
                                style: Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                              const Gap(2.0),
                              Text(
                                'e.g. 979 Kundiman Street, Sampaloc, 1009 Manila',
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                        ),
                        const Gap(24.0),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Additional Details',
                        style: Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const Gap(2.0),
                      TextField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Unit number, house number, building, street name',
                          hintStyle: Theme.of(context).textTheme.caption,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Notes',
                        style: Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const Gap(2.0),
                      TextField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'e.g. Landmarks',
                          hintStyle: Theme.of(context).textTheme.caption,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 21.0,
              vertical: 12.0,
            ),
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
              ),
              child: Text('Save Address'),
            ),
          ),
        ],
      ),
    );
  }
}
