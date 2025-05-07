import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HeartController extends GetxController {
  var isFavorite = false.obs;
  void toggleFavorite() => isFavorite.value = !isFavorite.value;
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final HeartController controller = Get.put(HeartController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Favorite Heart with GetX',
      home: Scaffold(
        appBar: AppBar(title: const Text('Favorite Heart')),
        body: Center(
          child: Obx(
                () => IconButton(
              iconSize: 100,
              icon: Icon(
                controller.isFavorite.value
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: Colors.red,
              ),
              onPressed: controller.toggleFavorite,
            ),
          ),
        ),
      ),
    );
  }
}
