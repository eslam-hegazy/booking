import 'package:booking/core/app_assets/app_assets.dart';
import 'package:booking/core/theme/app_colors.dart';
import 'package:booking/core/theme/app_styles.dart';
import 'package:booking/core/utils/app_functions.dart';
import 'package:booking/core/utils/app_sizes.dart';
import 'package:booking/core/widgets/custom_image_widget.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class DropdownListWidget extends StatefulWidget {
  const DropdownListWidget({
    super.key,
    required this.currentValue,
    required this.listValues,
    this.dropdownTitle,
    this.dropdownTitleStyle,
    this.borderColor,
    this.prefixIcon,
    this.backgroundColor = AppColors.whiteColor,
    this.width,
    this.dropDownVerticalPadding,
    this.onTap,
    this.maxLength = 100,
    this.onCancelTap,
    this.isEditInfo = false,
    this.validator,
    this.suffixIcon,
  });

  final String currentValue;
  final List<String> listValues;
  final String? dropdownTitle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? dropdownTitleStyle;
  final Color? borderColor;
  final Color? backgroundColor;
  final double? width;
  final int maxLength;
  final double? dropDownVerticalPadding;
  final void Function(String?)? onTap;
  final void Function()? onCancelTap;
  final String? Function(String?)? validator;
  final bool isEditInfo;

  @override
  State<DropdownListWidget> createState() => _DropdownListWidgetState();
}

class _DropdownListWidgetState extends State<DropdownListWidget> {
  String selectedValue = "";
  bool showDropdown = false;
  List<String> values = [];

  @override
  void initState() {
    super.initState();
    selectedValue = widget.currentValue;
    values = widget.listValues;
    if (widget.prefixIcon != null) {
      values.insert(0, selectedValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: widget.dropdownTitle != null,
          child: Text(
            widget.dropdownTitle ?? '',
            style: widget.dropdownTitleStyle ?? AppStyles.mediumStyle(),
          ),
        ),
        Visibility(
          visible: widget.dropdownTitle != null,
          child: SizedBox(height: 8.h),
        ),
        SizedBox(
          width: widget.width ?? Sizes.getWidth(context),
          child: DropdownButtonFormField2<String>(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 2.w,
                vertical: widget.dropDownVerticalPadding ?? 8.h,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(
                  color: widget.borderColor ?? AppColors.t50Color,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color:
                      widget.borderColor ??
                      AppColors.primaryColor.withOpacity(0.4),
                  width: 1.5.w,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(
                  color: widget.borderColor ?? AppColors.t50Color,
                  width: 1.5.w,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 1.w),
                borderRadius: BorderRadius.circular(8.r),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 1.w),
                borderRadius: BorderRadius.circular(8.r),
              ),
              filled: true,
              fillColor: widget.backgroundColor,
            ),
            hint: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Offstage(
                  offstage: widget.prefixIcon == null,
                  child: widget.prefixIcon,
                ),

                Offstage(
                  offstage: widget.prefixIcon == null,
                  child: SizedBox(width: 8.w),
                ),
                !widget.isEditInfo
                    ? Text(
                        formatTextWithEllipsis(
                          widget.currentValue,
                          maxLength: widget.maxLength,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: AppStyles.mediumStyle(
                          fontSize: 12,
                          color: AppColors.mutedGray,
                        ),
                      )
                    : Text(
                        formatTextWithEllipsis(
                          widget.currentValue,
                          maxLength: widget.maxLength,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: AppStyles.mediumStyle(
                          fontSize: 12,
                          color: AppColors.mutedGray,
                        ),
                      ),
                Offstage(
                  offstage: widget.suffixIcon == null,
                  child: widget.suffixIcon,
                ),
              ],
            ),
            items: values
                .map(
                  (item) => DropdownMenuItem<String>(
                    value: item,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Visibility(
                          visible: widget.prefixIcon != null,
                          child: SizedBox(width: 8.w),
                        ),
                        !widget.isEditInfo
                            ? Text(
                                item,
                                style: AppStyles.mediumStyle(
                                  fontSize: 12,
                                  color: AppColors.mutedGray,
                                ),
                              )
                            : SizedBox(
                                width:
                                    (widget.width ?? Sizes.getWidth(context)) *
                                    0.75,
                                child: Text(
                                  item,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppStyles.mediumStyle(
                                    fontSize: 12,
                                    color: AppColors.mutedGray,
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                )
                .toList(),
            validator: widget.validator != null
                ? (String? value) => widget.validator!(value)
                : null,
            onChanged: (value) {
              if (widget.prefixIcon == null) {
                if (widget.onTap != null) {
                  widget.onTap!(value);
                }
              } else {
                if (value.toString() != values.first) {
                  widget.onTap!(value);
                } else {
                  if (widget.onCancelTap != null) {
                    widget.onCancelTap!();
                  }
                }
              }
            },
            onSaved: (value) {
              selectedValue = value.toString();
            },
            buttonStyleData: ButtonStyleData(
              padding: EdgeInsetsDirectional.only(end: 6.w),
            ),
            iconStyleData: IconStyleData(
              icon: ImageIconWidget(
                icon: Assets.iconsArrowDown,
                iconType: ImageIconType.normal,
                height: 12.h,
                width: 12.w,
              ),
              iconSize: 22.dg,
            ),
            dropdownStyleData: DropdownStyleData(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            menuItemStyleData: MenuItemStyleData(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
            ),
          ),
        ),
      ],
    );
  }
}
