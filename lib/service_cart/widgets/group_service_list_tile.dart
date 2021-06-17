import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:separated_column/separated_column.dart';

import '../../app_constants.dart';

class GroupServiceListTile extends StatelessWidget {
  const GroupServiceListTile();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(21.0),
            child: Text(
              'Living Room',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SeparatedColumn(
            separatorBuilder: (context, index) => const Divider(),
            children: List.generate(4, (index) => const ServiceListTile()),
          ),
        ],
      ),
    );
  }
}

class ServiceListTile extends StatelessWidget {
  const ServiceListTile();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(16.0),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 21.0,
              vertical: 8.0,
            ),
            child: Text(
              'Sofa Sterilization',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 21.0,
                        vertical: 8.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          const Gap(12.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '4.7 out of 5 stars',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                Text(
                                  'Average rating of the service',
                                  style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 21.0,
                        vertical: 8.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.format_quote,
                            color: Colors.amber,
                          ),
                          const Gap(12.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '100,000+ reviews',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                Text(
                                  'Of the service by users',
                                  style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100.0,
                width: 80.0,
                child: Stack(
                  children: [
                    Image.asset(
                      '${Assets.aircon}',
                      fit: BoxFit.cover,
                      height: 80.0,
                      width: 80.0,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          minimumSize: MaterialStateProperty.all(Size.fromHeight(12.0)),
                        ),
                        child: Text('Add'),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(24.0),
            ],
          ),
          const Gap(16.0),
        ],
      ),
    );
  }
}

extension ExtendedIterable<E> on Iterable<E> {
  /// Like Iterable<T>.map but callback have index as second argument
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }

  void forEachIndexed(void Function(E e, int i) f) {
    var i = 0;
    forEach((e) => f(e, i++));
  }
}

class ServiceTab extends StatelessWidget {
  final String? text;
  final bool? selected;
  final GestureTapCallback? onTap;

  const ServiceTab({
    Key? key,
    this.text,
    this.selected,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Ink(
        decoration: BoxDecoration(
          border: selected!
              ? Border(
                  bottom: BorderSide(
                    width: 4.0,
                    color: Color(0xFF364b68),
                  ),
                )
              : null,
        ),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.0),
            child: Center(
              child: Text(
                '$text',
                style: selected! ? Theme.of(context).textTheme.subtitle2!.copyWith(color: Color(0xFF364b68)) : Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
