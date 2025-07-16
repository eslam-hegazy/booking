import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_fonts.dart';
import 'package:booking/core/widgets/custom_required_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String? title;
  final String? hintText;
  final bool isRequired;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;
  final bool isPassword;
  final bool? readOnly;
  final int? maxLine;
  final TextAlign? textAlign;
  final Color? fillColor;
  final VoidCallback? onTap;

  const CustomTextFormField({
    super.key,
    required this.controller,
    this.title,
    this.hintText,
    this.isRequired = false,
    this.textInputType,
    this.validator,
    this.inputFormatters,
    this.onChanged,
    this.isPassword = false,
    this.readOnly,
    this.maxLine,
    this.textAlign,
    this.fillColor,
    this.onTap,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    final enableBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.h),
      borderSide: BorderSide(color: AppColors.secondColor),
    );

    final disableBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.h),
      borderSide: BorderSide.none,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomRequiredText(title: widget.title, isRequired: widget.isRequired),
        TextFormField(
          controller: widget.controller,
          keyboardType: widget.textInputType,
          textAlign: widget.textAlign ?? TextAlign.start,
          validator: widget.validator,
          inputFormatters: widget.inputFormatters,
          onChanged: widget.onChanged,
          readOnly: widget.readOnly ?? false,
          onTap: widget.onTap,
          maxLines: widget.maxLine ?? 1,
          obscureText: widget.isPassword ? _obscureText : false,
          cursorColor: AppColors.secondColor,
          decoration: InputDecoration(
            filled: true,
            fillColor:
                widget.fillColor ?? AppColors.primaryColor.withOpacity(0.2),
            contentPadding:
                EdgeInsets.symmetric(vertical: 4.h, horizontal: 12.w),
            hintText: widget.hintText,
            hintStyle: AppFonts.regularStyle(),
            border: disableBorder,
            enabledBorder: disableBorder,
            focusedBorder: enableBorder,
            disabledBorder: disableBorder,
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: AppColors.secondColor,
                    ),
                    onPressed: () {
                      setState(() => _obscureText = !_obscureText);
                    },
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
