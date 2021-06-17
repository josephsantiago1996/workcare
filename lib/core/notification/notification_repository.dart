import 'package:riverpod/riverpod.dart';

import '../client.dart';
import 'notification.dart';

final notificationRepositoryProvider = Provider<INotificationRepository>((ref) => NotificationRepository(ref.read));

abstract class INotificationRepository {
  Future<List<Notification>> find();
}

class NotificationRepository implements INotificationRepository {
  NotificationRepository(this.read);

  final Reader read;

  @override
  Future<List<Notification>> find() {
    return read(clientProvider).findNotification();
  }
}

class FakeNotificationRepository implements INotificationRepository {
  @override
  Future<List<Notification>> find() {
    return Future.delayed(Duration(seconds: 2), () {
      return [
        Notification(
          id: '1',
          title: 'Up to P300 OFF on Lazada! 🛍️',
          description: 'Enjoy this exclusive discount when you use your Grab',
          seen: true,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Notification(
          id: '2',
          title: 'More savings when you shop at SM with Grab',
          description: 'Save while you safely shop at SM! 🛍️ Pay with GrabPay',
          seen: false,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Notification(
          id: '3',
          title: 'Get your discounted G!Pass for only P49! 🚘',
          description: 'Enjoy safe rides while saving with your first G!Pass at Grab',
          seen: false,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Notification(
          id: '4',
          title: 'Last chance to get P1000 OFF Lazada!',
          description: 'Your carts are calling! 🛍️ Check out with GrabPay a',
          seen: false,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Notification(
          id: '5',
          title: 'Still got that 5.5 hangover? 🛒',
          description: 'Add to cart and checkout with GrabPay to get 20% off',
          seen: false,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Notification(
          id: '1',
          title: 'Up to P300 OFF on Lazada! 🛍️',
          description: 'Enjoy this exclusive discount when you use your Grab',
          seen: true,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Notification(
          id: '2',
          title: 'More savings when you shop at SM with Grab',
          description: 'Save while you safely shop at SM! 🛍️ Pay with GrabPay',
          seen: false,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Notification(
          id: '3',
          title: 'Get your discounted G!Pass for only P49! 🚘',
          description: 'Enjoy safe rides while saving with your first G!Pass at Grab',
          seen: false,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Notification(
          id: '4',
          title: 'Last chance to get P1000 OFF Lazada!',
          description: 'Your carts are calling! 🛍️ Check out with GrabPay a',
          seen: false,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Notification(
          id: '5',
          title: 'Still got that 5.5 hangover? 🛒',
          description: 'Add to cart and checkout with GrabPay to get 20% off',
          seen: false,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Notification(
          id: '1',
          title: 'Up to P300 OFF on Lazada! 🛍️',
          description: 'Enjoy this exclusive discount when you use your Grab',
          seen: true,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Notification(
          id: '2',
          title: 'More savings when you shop at SM with Grab',
          description: 'Save while you safely shop at SM! 🛍️ Pay with GrabPay',
          seen: false,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Notification(
          id: '3',
          title: 'Get your discounted G!Pass for only P49! 🚘',
          description: 'Enjoy safe rides while saving with your first G!Pass at Grab',
          seen: false,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Notification(
          id: '4',
          title: 'Last chance to get P1000 OFF Lazada!',
          description: 'Your carts are calling! 🛍️ Check out with GrabPay a',
          seen: false,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        Notification(
          id: '5',
          title: 'Still got that 5.5 hangover? 🛒',
          description: 'Add to cart and checkout with GrabPay to get 20% off',
          seen: false,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
      ];
    });
  }
}
