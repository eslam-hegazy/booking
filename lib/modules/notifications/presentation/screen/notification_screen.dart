import 'package:booking/core/utils/export_files.dart';
import 'package:booking/modules/notifications/presentation/widgets/all_tab.dart';
import 'package:booking/modules/notifications/presentation/widgets/unread_tab.dart';
import 'package:easy_localization/easy_localization.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          elevation: 0,
          leadingWidth: 200.w,
          leading: Row(
            children: [
              10.w.pw,
              Icon(
                Icons.notifications_none_outlined,
                color: AppColors.primaryColor,
                size: 30.h,
              ),
              4.w.pw,
              Text(
                LocaleKeys.tab_notifications.tr(),
                style: AppStyles.boldStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Divider(),
            8.h.ph,
            TabBar(
              indicatorColor: AppColors.primaryColor,
              indicator: UnderlineTabIndicator(
                borderSide: const BorderSide(
                  width: 3,
                  color: AppColors.primaryColor,
                ),
                borderRadius: BorderRadius.circular(10),
                insets: EdgeInsets.symmetric(horizontal: 80.w),
              ),
              labelStyle: AppStyles.mediumStyle(color: AppColors.primaryColor),
              tabs: [
                Tab(text: LocaleKeys.tab_all.tr()),
                Tab(text: LocaleKeys.tab_unread.tr()),
              ],
            ),
            Expanded(child: TabBarView(children: [AllTab(), UnreadTab()])),
          ],
        ),
      ),
    );
  }
}
