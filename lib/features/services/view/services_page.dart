import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../app_constants.dart';
import '../../../service_showcase/view/service_showcase_page.dart';

class ServicesPage {
  static const String routeName = '/services';
  static Route<void> route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => ServicesScreen(),
    );
  }
}

class ServicesScreen extends StatelessWidget {
  const ServicesScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other Services'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 1.0 / 1.0,
          maxCrossAxisExtent: 160.0,
        ),
        itemCount: services.length,
        itemBuilder: (context, index) {
          final service = services[index];

          return Material(
            color: Colors.white,
            child: Ink(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.02,
                ),
              ),
              child: InkWell(
                onTap: () => Navigator.of(context).push(ServiceShowcasePage.route()),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          '${service.assetName}',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Gap(8.0),
                      Text(
                        '${service.name}',
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class GeneralService {
  final String id;
  final String imageUrl;
  final String assetName;
  final String name;

  GeneralService({
    required this.id,
    required this.name,
    required this.assetName,
    required this.imageUrl,
  });
}

final services = [
  GeneralService(
    id: '1',
    assetName: Assets.cleaning,
    name: 'General Cleaning',
    imageUrl: '',
  ),
  GeneralService(
    id: '2',
    assetName: Assets.laundry,
    name: 'Laundry',
    imageUrl: '',
  ),
  GeneralService(
    id: '3',
    assetName: Assets.aircon,
    name: 'Aircon Maintenance',
    imageUrl: '',
  ),
  GeneralService(
    id: '4',
    assetName: Assets.carpentry,
    name: 'Carpentry',
    imageUrl: '',
  ),
  GeneralService(
    assetName: Assets.electrical,
    name: 'Electrical',
    imageUrl: '',
    id: '',
  ),
  GeneralService(
    assetName: Assets.plumbing,
    name: 'Plumbing',
    imageUrl: '',
    id: '',
  ),
  GeneralService(
    assetName: Assets.painting,
    name: 'Painting',
    imageUrl: '',
    id: '',
  ),
];
