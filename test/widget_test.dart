import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:ankurmaity/home/home_controller.dart';
import 'package:ankurmaity/home/home_view.dart';

void main() {
  testWidgets('portfolio home renders', (tester) async {
    Get.put(HomeController());

    await tester.pumpWidget(
      const GetMaterialApp(home: HomeView()),
    );

    expect(find.text('Ankur Maity'), findsWidgets);

    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump(const Duration(seconds: 1));
    Get.reset();
  });
}
