import 'package:booking/core/utils/export_files.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CustomQrCodeWidget extends StatelessWidget {
  final String data;
  final EdgeInsets padding;
  final double? size;
  const CustomQrCodeWidget({
    super.key,
    required this.data,
    this.padding = EdgeInsets.zero,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: QrImageView(data: data, version: QrVersions.auto, size: size),
    );
  }
}
