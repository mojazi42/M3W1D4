import 'package:get/get.dart';

class HeartController extends GetxController {
  var isFavorite = false.obs; // observable boolean

  void toggleFavorite() {
    isFavorite.value = !isFavorite.value;
  }
}
