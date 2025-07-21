import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_styles.dart';
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
  final TextStyle? labelStyle;

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
    this.labelStyle,
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
      borderRadius: BorderRadius.circular(12.h),
      borderSide: BorderSide(color: AppColors.t50Color),
    );

    final disableBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.h),
      borderSide: BorderSide(color: AppColors.t50Color),
    );

    final errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.h),
      borderSide: BorderSide(color: Colors.red, width: 1.w),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomRequiredText(
          title: widget.title,
          isRequired: widget.isRequired,
          style: widget.labelStyle,
        ),
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
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            filled: true,
            fillColor: widget.fillColor ?? AppColors.whiteColor,
            contentPadding: EdgeInsets.symmetric(
              vertical: 4.h,
              horizontal: 12.w,
            ),
            hintText: widget.hintText,
            hintStyle: AppStyles.lightStyle(),
            border: disableBorder,
            enabledBorder: disableBorder,
            focusedBorder: enableBorder,
            disabledBorder: disableBorder,
            errorBorder: errorBorder,
            focusedErrorBorder: errorBorder,

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
