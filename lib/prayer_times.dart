import 'dart:developer';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:ytquran/api/api_paths.dart';
import 'package:ytquran/api/base.dart';
import 'package:ytquran/main.dart';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:ytquran/routing/app_router.dart';

import '../../../../api/api_paths.dart';
import '../../../../api/base.dart';

class prayertimes extends StatefulWidget {
  const prayertimes({super.key});

  @override
  State<prayertimes> createState() => _prayertimesState();
}

class _prayertimesState extends State<prayertimes> {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: MyAThan());
  }
}

class MyAThan extends ConsumerWidget {
  const MyAThan({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: ref.watch(GoRoterProvider),
      debugShowCheckedModeBanner: false,
      title: 'Prayer Hackthon',
    );
  }
}
