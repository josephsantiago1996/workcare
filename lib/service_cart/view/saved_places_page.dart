import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:workcare/service_cart/view/saved_places_form_page.dart';

class SavedPlacesPage {
  static const String routeName = '';
  static Route<void> route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => SavedPlacesScreen(),
    );
  }
}

class SavedPlacesScreen extends StatelessWidget {
  const SavedPlacesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Places'),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey.shade50,
                    child: Icon(
                      Icons.location_pin,
                      color: Colors.red,
                    ),
                  ),
                  const Gap(16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Home',
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Gap(2.0),
                        Text(
                          '26 Panay Ave, Diliman, Quezon City, 1103 Metro Manila\n',
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.caption,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey.shade50,
                    child: Icon(
                      Icons.location_pin,
                      color: Colors.red,
                    ),
                  ),
                  const Gap(16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Work',
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Gap(2.0),
                        Text(
                          '26 Panay Ave, Diliman, Quezon City, 1103 Metro Manila\n',
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.caption,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () => Navigator.of(context).push(SavedPlacesFormPage.route()),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey.shade50,
                    foregroundColor: Color(0xFF33689C),
                    child: Icon(Icons.add),
                  ),
                  const Gap(16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add New Address',
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold, color: Color(0xFF33689C)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
