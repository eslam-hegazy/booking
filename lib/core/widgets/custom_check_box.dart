import 'package:booking/core/utils/export_files.dart';

class CustomCheckbox extends StatefulWidget {
  final String label;
  final ValueChanged<bool?> onChanged;
  final TextStyle? textStyle;
  final Color? activeColor;

  const CustomCheckbox({
    super.key,
    required this.label,
    required this.onChanged,
    this.textStyle,
    this.activeColor,
  });

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isCheck = false;

  void _toggleCheckbox() {
    final newValue = !isCheck;
    widget.onChanged(newValue);
    setState(() {
      isCheck = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _toggleCheckbox,
      borderRadius: BorderRadius.circular(4), // optional ripple effect
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
            value: isCheck,
            onChanged: (value) {
              widget.onChanged(value);
              setState(() {
                isCheck = value ?? false;
              });
            },
            activeColor: widget.activeColor ?? Theme.of(context).primaryColor,
          ),
          Flexible(
            child: Text(
              widget.label,
              style: widget.textStyle ?? const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
