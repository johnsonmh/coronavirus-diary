import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:covidnearme/src/app.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

void main() {
  setUp(() async {
    final directory = await Directory.systemTemp.createTemp();
    BlocSupervisor.delegate = await HydratedBlocDelegate.build(
      storageDirectory: directory,
    );
  });

  testWidgets('App loads test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(App());
  });
}
