import 'package:riverpod/riverpod.dart';

import '../client.dart';
import 'activity.dart';

final activityRepositoryProvider = Provider<IActivityRepository>((ref) => ActivityRepository(ref.read));

abstract class IActivityRepository {
  Future<List<Activity>> find();
}

class ActivityRepository implements IActivityRepository {
  ActivityRepository(this.read);

  final Reader read;
  late final Client client = read(clientProvider);

  @override
  Future<List<Activity>> find() {
    return client.findActivity();
  }
}

class FakeActivityRepository implements IActivityRepository {
  @override
  Future<List<Activity>> find() {
    return Future.delayed(Duration(seconds: 2), () {
      return [
        Activity(
          id: '1',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          status: ActivityStatus.pending,
          services: [
            'Disinfection',
            'Wall Cleaning',
            'Sofa Sterilization',
            'Carpet Cleaning',
            'Window Cleaning',
          ],
          bidCount: 4,
          provider: null,
        ),
        Activity(
          id: '2',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          status: ActivityStatus.scheduled,
          services: [
            'Disinfection',
            'Wall Cleaning',
            'Sofa Sterilization',
            'Carpet Cleaning',
            'Window Cleaning',
          ],
          bidCount: 5,
          provider: ActivityProvider(
            photoUrl: 'https://www.nacionrex.com/__export/1610931266836/sites/debate/img/2021/01/17/blackpink-lisa-solo-debut-rumores_crop1610929348670.jpg_423682103.jpg',
            displayName: 'Juan Dela Cruz',
          ),
        ),
        Activity(
          id: '3',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          status: ActivityStatus.processing,
          services: [
            'Disinfection',
            'Wall Cleaning',
            'Sofa Sterilization',
            'Carpet Cleaning',
            'Window Cleaning',
          ],
          bidCount: 5,
          provider: ActivityProvider(
            photoUrl: 'https://www.nacionrex.com/__export/1610931266836/sites/debate/img/2021/01/17/blackpink-lisa-solo-debut-rumores_crop1610929348670.jpg_423682103.jpg',
            displayName: 'Juan Dela Cruz',
          ),
        ),
        Activity(
          id: '4',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          status: ActivityStatus.completed,
          services: [
            'Disinfection',
            'Wall Cleaning',
            'Sofa Sterilization',
            'Carpet Cleaning',
            'Window Cleaning',
          ],
          bidCount: 5,
          provider: ActivityProvider(
            photoUrl: 'https://www.nacionrex.com/__export/1610931266836/sites/debate/img/2021/01/17/blackpink-lisa-solo-debut-rumores_crop1610929348670.jpg_423682103.jpg',
            displayName: 'Juan Dela Cruz',
          ),
        ),
        Activity(
          id: '5',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          status: ActivityStatus.cancelled,
          services: [
            'Disinfection',
            'Wall Cleaning',
            'Sofa Sterilization',
            'Carpet Cleaning',
            'Window Cleaning',
          ],
          bidCount: 5,
          provider: ActivityProvider(
            photoUrl: 'https://www.nacionrex.com/__export/1610931266836/sites/debate/img/2021/01/17/blackpink-lisa-solo-debut-rumores_crop1610929348670.jpg_423682103.jpg',
            displayName: 'Juan Dela Cruz',
          ),
        ),
        Activity(
          id: '6',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          status: ActivityStatus.expired,
          services: [
            'Disinfection',
            'Wall Cleaning',
            'Sofa Sterilization',
            'Carpet Cleaning',
            'Window Cleaning',
          ],
          bidCount: 5,
          provider: ActivityProvider(
            photoUrl: 'https://www.nacionrex.com/__export/1610931266836/sites/debate/img/2021/01/17/blackpink-lisa-solo-debut-rumores_crop1610929348670.jpg_423682103.jpg',
            displayName: 'Juan Dela Cruz',
          ),
        ),
      ];
    });
  }
}
