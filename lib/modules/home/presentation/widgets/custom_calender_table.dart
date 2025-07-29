import 'package:booking/core/utils/export_files.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class CustomCalenderTable extends StatefulWidget {
  const CustomCalenderTable({super.key});

  @override
  State<CustomCalenderTable> createState() => _CustomCalenderTableState();
}

class _CustomCalenderTableState extends State<CustomCalenderTable> {
  DateTime _currentDate = DateTime.now();
  final EventList<Event> _markedDates = EventList<Event>(
    events: {
      DateTime.now(): [
        Event(
          date: DateTime.now(),
          title: 'Today',
          icon: const Icon(Icons.today, color: Colors.white),
        ),
      ],
    },
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.h),
        border: Border.all(color: AppColors.b75Color),
      ),
      child: CalendarCarousel<Event>(
        onDayPressed: (DateTime date, List<Event> events) {
          setState(() {
            _currentDate = date;
          });
          for (var event in events) {
            debugPrint(event.title);
          }
        },
        selectedDateTime: _currentDate,
        locale: "ar",
        selectedDayBorderColor: AppColors.primaryColor,
        selectedDayTextStyle: AppStyles.mediumStyle(
          color: AppColors.primaryColor,
        ),
        weekendTextStyle: AppStyles.lightStyle(
          color: AppColors.primaryColor,
          fontSize: 12,
        ),
        weekdayTextStyle: AppStyles.lightStyle(
          color: AppColors.primaryColor,
          fontSize: 12,
        ),
        headerTextStyle: AppStyles.mediumStyle(color: AppColors.blackColor),
        todayTextStyle: AppStyles.boldStyle(color: AppColors.primaryColor),
        selectedDayButtonColor: AppColors.whiteColor,
        todayButtonColor: Colors.transparent,
        todayBorderColor: AppColors.primaryColor,
        markedDatesMap: _markedDates,
        markedDateIconBuilder: (event) => event.icon!,
        showOnlyCurrentMonthDate: true,
        daysHaveCircularBorder: true,
        thisMonthDayBorderColor: Colors.transparent,
        iconColor: AppColors.primaryColor,
        // headerMargin: EdgeInsets.only(bottom: 8.h),
        height: 340.h,
      ),
    );
  }
}
