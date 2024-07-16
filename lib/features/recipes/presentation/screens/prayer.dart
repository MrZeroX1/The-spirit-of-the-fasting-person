import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/repos/prayer_repository.dart';

class PrayerScreen extends ConsumerWidget {
  const PrayerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prayer = ref.watch(prayersProvider);
    return Scaffold(
      appBar: AppBar(),
      body: prayer.when(
        data: (prayer) => Column(
          children: [
            Row(
              children: [
                Text(prayer.prayers["Fajr"]!),
                Spacer(),
                const Text("الفجر"),
              ],
            ),
            Row(
              children: [
                Text(prayer.prayers["Sunrise"]!),
                Spacer(),
                const Text("الشروق"),
              ],
            ),
            Row(
              children: [
                Text(prayer.prayers["Dhuhr"]!),
                Spacer(),
                const Text("الظهر"),
              ],
            ),
            Row(
              children: [
                Text(prayer.prayers["Asr"]!),
                Spacer(),
                const Text("العصر"),
              ],
            ),
            Row(
              children: [
                Text(prayer.prayers["Maghrib"]!),
                Spacer(),
                const Text("المغرب"),
              ],
            ),
            Row(
              children: [
                Text(prayer.prayers["Isha"]!),
                Spacer(),
                const Text("العشاء"),
              ],
            ),
          ],
        ),
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}
