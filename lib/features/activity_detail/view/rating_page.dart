import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:separated_row/separated_row.dart';

class RatingPage {
  static const String routeName = '/';
  static Route<void> route() {
    return MaterialPageRoute(
      fullscreenDialog: true,
      settings: RouteSettings(name: routeName),
      builder: (context) => const RatingScreen(),
    );
  }
}

class RatingScreen extends StatelessWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Perfect',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              iconSize: 32.0,
                              color: Colors.amber,
                              icon: Icon(Icons.star_rate_rounded),
                              constraints: BoxConstraints(),
                              padding: EdgeInsets.zero,
                            ),
                            IconButton(
                              onPressed: () {},
                              iconSize: 32.0,
                              color: Colors.amber,
                              icon: Icon(Icons.star_rate_rounded),
                              constraints: BoxConstraints(),
                              padding: EdgeInsets.zero,
                            ),
                            IconButton(
                              onPressed: () {},
                              iconSize: 32.0,
                              color: Colors.amber,
                              icon: Icon(Icons.star_rate_rounded),
                              constraints: BoxConstraints(),
                              padding: EdgeInsets.zero,
                            ),
                            IconButton(
                              onPressed: () {},
                              iconSize: 32.0,
                              color: Colors.amber,
                              icon: Icon(Icons.star_rate_rounded),
                              constraints: BoxConstraints(),
                              padding: EdgeInsets.zero,
                            ),
                            IconButton(
                              onPressed: () {},
                              iconSize: 32.0,
                              color: Colors.amber,
                              icon: Icon(Icons.star_rate_rounded),
                              constraints: BoxConstraints(),
                              padding: EdgeInsets.zero,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Great! Why not thank them with a tip?',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        const Gap(16.0),
                        SeparatedRow(
                          separatorBuilder: (context, index) => const Gap(8.0),
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Ink(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 16.0,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text('P20'),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Ink(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 16.0,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text('P50'),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Ink(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 16.0,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text('P100'),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Ink(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 16.0,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text('P200'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'What did you like about the delivery?',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    AspectRatio(
                                      aspectRatio: 1.0 / 1.0,
                                      child: Image.network(
                                        'https://img.icons8.com/color/452/compass-pokemon.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Gap(4.0),
                                    Text(
                                      'Expert Navigator',
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    AspectRatio(
                                      aspectRatio: 1.0 / 1.0,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(1000.0),
                                        child: Image.network(
                                          'https://image.flaticon.com/icons/png/512/2581/2581685.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Gap(4.0),
                                    Text(
                                      'Great Personality',
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    AspectRatio(
                                      aspectRatio: 1.0 / 1.0,
                                      child: Image.network(
                                        'https://image.flaticon.com/icons/png/512/262/262831.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Gap(4.0),
                                    Text(
                                      'Excellent Service',
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    AspectRatio(
                                      aspectRatio: 1.0 / 1.0,
                                      child: Image.network(
                                        'https://www.pngkit.com/png/full/358-3585985_get-in-touch-volunteer-group-logo.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Gap(4.0),
                                    Text(
                                      'Helpful',
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    AspectRatio(
                                      aspectRatio: 1.0 / 1.0,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(1000.0),
                                        child: Image.network(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOBzypk23534H8udq3nbwyq8naYm1UfZY5eYLG0e-DNv26LxuEMjXBxknhz7oB9X2pE2c&usqp=CAU',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Gap(4.0),
                                    Text(
                                      'Well prepared',
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ],
                  ),
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
                onPressed: () => Navigator.of(context).pop(),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
