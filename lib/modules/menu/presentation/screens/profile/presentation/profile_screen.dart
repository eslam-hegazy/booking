import 'package:booking/core/app_router/app_router.dart';
import 'package:booking/core/di/dependancy_injection.dart';
import 'package:booking/core/utils/export_files.dart';
import 'package:booking/core/widgets/custom_button.dart';
import 'package:booking/modules/menu/presentation/screens/profile/logic/profile_cubit.dart';
import 'package:booking/modules/menu/presentation/screens/profile/presentation/profile_change_password_screen.dart';
import 'package:booking/modules/menu/presentation/screens/profile/presentation/widgets/profile_avatar_pic_widget.dart';
import 'package:booking/modules/menu/presentation/screens/profile/presentation/widgets/profile_info_field_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isEditMode = false;

  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: 'Yasser Mohammed');
    _emailController = TextEditingController(text: 'yaser@gmail.com');
    _phoneController = TextEditingController(text: '01234567890');
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.link_profile.tr(),
          style: AppStyles.boldStyle(color: Colors.white, fontSize: 18.sp),
        ),
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                if (_isEditMode) {}
                _isEditMode = !_isEditMode;
              });
            },
            child: Text(
              _isEditMode ? LocaleKeys.button_save.tr() : LocaleKeys.edit.tr(),
              style: AppStyles.boldStyle(fontSize: 16.sp, color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
        child: Column(
          children: [
            ProfileAvatar(),
            Gap(32.h),
            ProfileInfoField(
              label: LocaleKeys.label_fullName.tr(),
              icon: FontAwesomeIcons.user,
              controller: _nameController,
              isEditMode: _isEditMode,
            ),
            Gap(16.h),
            ProfileInfoField(
              label: LocaleKeys.label_email.tr(),
              icon: FontAwesomeIcons.envelope,
              controller: _emailController,
              isEditMode: _isEditMode,
            ),
            Gap(16.h),
            ProfileInfoField(
              label: LocaleKeys.label_phone.tr(),
              icon: FontAwesomeIcons.phone,
              controller: _phoneController,
              isEditMode: _isEditMode,
            ),
            Gap(32.h),

            if (!_isEditMode)
              CustomButton(
                text: LocaleKeys.change_pass.tr(),
                press: () {
                  AppRouter.to(
                    () => BlocProvider(
                      create: (_) => getIt<ProfileCubit>(),
                      child: ProfileChangePasswordScreen(),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
