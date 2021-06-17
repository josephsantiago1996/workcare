import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controller/address_picker_controller.dart';
import 'map_page.dart';

class AddressPickerPage {
  static const String routeName = '';
  static Route<void> route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => const AddressPickerScreen._(),
    );
  }
}

class AddressPickerScreen extends StatelessWidget {
  const AddressPickerScreen._({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: Text('Search Address'),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(MapPage.route()),
            icon: Icon(Icons.map),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blueGrey.shade50,
                  foregroundColor: Colors.red,
                  child: Icon(Icons.location_pin),
                ),
                const Gap(16.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'e.g. Wagas St., Tondo, Manila',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Ink(
            height: 8.0,
            color: Colors.blueGrey.shade50,
          ),
          Expanded(
            child: Consumer(
              builder: (context, watch, child) {
                final asyncValue = watch(placesSearchResponseValueProvider);
                return asyncValue.when(
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  },
                  error: (error, stackTrace) {
                    debugPrint(error.toString());
                    debugPrint(stackTrace.toString());

                    return const Center(
                      child: Text('Something went wrong...'),
                    );
                  },
                  data: (value) {
                    debugPrint(value!.predictions.toString());

                    return ListView.separated(
                      itemCount: value.predictions.length,
                      itemBuilder: (context, index) {
                        final prediction = value.predictions[index];
                        return AddressListTile(
                          title: '${prediction.structuredFormatting?.mainText ?? prediction.terms.first.value}',
                          subtitle: '${prediction.structuredFormatting?.secondaryText ?? prediction.description}',
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider(
                          indent: 16.0,
                          endIndent: 16.0,
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AddressListTile extends StatelessWidget {
  const AddressListTile({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$title',
                    style: Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$subtitle',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
            const Gap(16.0),
            Icon(
              Icons.bookmark_outline,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
