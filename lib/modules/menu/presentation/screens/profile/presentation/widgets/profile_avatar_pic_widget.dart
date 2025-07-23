import 'dart:io';

import 'package:booking/core/utils/app_functions.dart';
import 'package:booking/core/utils/export_files.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class ProfileAvatar extends StatefulWidget {
  const ProfileAvatar({super.key});

  @override
  State<ProfileAvatar> createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  XFile? profileImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        getImageUsingImagePicker(ImageSource.gallery).then((image) {
          if (image != null) {
            profileImage = image;
            setState(() {});
          }
        });
      },
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(60.r),
            child: profileImage != null
                ? Image.file(
                    File(profileImage!.path),
                    width: 120.w,
                    height: 120.h,
                    fit: BoxFit.cover,
                  )
                : FaIcon(
                    FontAwesomeIcons.user,
                    size: 120.dg,
                    color: AppColors.b100Color,
                  ),
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: AppColors.primaryColor,
            child: IconButton(
              icon: const Icon(Icons.camera_alt, color: Colors.white, size: 20),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
