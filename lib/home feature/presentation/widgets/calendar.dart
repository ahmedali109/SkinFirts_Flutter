import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:medicalapp/core/utilities/app_colors.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key, required DateTime selectedDate});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return EasyTheme(
      data:  EasyTheme.of(context).copyWithState(
    selectedCurrentDayTheme: const DayThemeData(
      backgroundColor: AppColors.primaryColor,
    ),
    unselectedCurrentDayTheme: const DayThemeData(
      backgroundColor: Colors.white,
    ),
    disabledCurrentDayTheme: DayThemeData(
      backgroundColor: Colors.grey.shade100,
    )),
      child: EasyDateTimeLinePicker(
        //locale: const Locale('ar'),
        headerOptions: const HeaderOptions(headerType: HeaderType.none),
        timelineOptions: const TimelineOptions(height: 150),
        currentDate: selectedDate,
        firstDate: DateTime(2024, 10, 11),
        lastDate: DateTime(2024, 12, 20),
        focusedDate: DateTime.now(),
        onDateChange: (date) {
          setState(() {
            selectedDate = date;
          });
        },
      ),
    );
  }
}
