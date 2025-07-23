import 'package:booking/core/utils/export_files.dart';
import 'package:get/get.dart';

class DialogAndBottomSheets {
  DialogAndBottomSheets._();

  static void showCustomBottomSheet({
    required Widget child,
    Function(dynamic value)? onClose,
  }) {
    Get.bottomSheet(child, isScrollControlled: true).then((value) {
      if (onClose != null) {
        onClose(value);
      }
    });
  }
}
