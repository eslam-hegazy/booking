import 'package:booking/core/utils/export_files.dart';

class AllTab extends StatelessWidget {
  const AllTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      itemBuilder: (_, index) {
        return ListTile(
          title: Text("New Message"),
          subtitle: Text("1 hour"),
          trailing: CircleAvatar(radius: 5.h,backgroundColor: AppColors.primaryColor),
        );
      },
      separatorBuilder: (_, index) => Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w),
        child: Divider(),
      ),
      itemCount: 6,
    );
  }
}
