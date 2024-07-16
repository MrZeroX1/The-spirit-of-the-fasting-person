import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../api/api_paths.dart';
import '../../../../api/base.dart';
import '../models/prayer.dart';

final prayerRepositoryProvider = Provider<PrayerImpl>((ref) {
  return PrayerImpl();
});

abstract class RecipeRepository {
  Future<Prayer> fetchPrayers();
}

final prayersProvider = FutureProvider<Prayer>((ref) async {
  return ref.watch(prayerRepositoryProvider).fetchPrayers();
});

class PrayerImpl extends BaseAPI implements RecipeRepository {
  @override
  Future<Prayer> fetchPrayers() async {
    final getAddressApi = getAPI(ApiPaths.prayers);
    final currentTimer = DateTime.now();
    PermissionStatus permissionStatus = await Permission.location.request();
    bool isPermanentlyDenied = await Permission.location.isPermanentlyDenied;
    if (isPermanentlyDenied) {
      await openAppSettings();
    }
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    final queryParameter = {
      "year": currentTimer.year.toString(),
      "month": currentTimer.month.toString(),
      "latitude": position.latitude.toString(),
      "longitude": position.longitude.toString(),
    };
    final response =
        await super.get(getAddressApi, queryParams: queryParameter);
            log(response.toString());


    final resultPrayer = response["data"];

    final Prayer prayer = Prayer.fromMap(resultPrayer[0]["timings"]);

    return prayer;
  }
}
