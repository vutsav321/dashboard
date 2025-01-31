import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalendarWidget extends StatefulWidget {
  @override
  _CustomCalendarWidgetState createState() => _CustomCalendarWidgetState();
}

class _CustomCalendarWidgetState extends State<CustomCalendarWidget> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  // List<DateTime> highlightedDays = [
  //   DateTime(2025, 1, 27),
  //   DateTime(2025, 1, 28),
  //   DateTime(2025, 1, 29),
  //   DateTime(2025, 1, 30),
  // ];
  List<String> months = [
    "JAN",
    "FEB",
    "MAR",
    "APR",
    "MAY",
    "JUN",
    "JUL",
    "AUG",
    "SEP",
    "OCT",
    "NOV",
    "DEC"
  ];
  List<int> years = List<int>.generate(101, (index) => 2000 + index);
  late String selectedMonth;
  late int selectedYear;

  @override
  void initState() {
    super.initState();
    selectedMonth = months[_focusedDay.month - 1];
    selectedYear = _focusedDay.year;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header (Month & Year)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                value: selectedMonth,
                items: months
                    .map((month) => DropdownMenuItem(
                        value: month,
                        child: Text(month, style: dropDownTextStyle)))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedMonth = value!;
                    _focusedDay = DateTime(selectedYear,
                        months.indexOf(value) + 1, _focusedDay.day);
                  });
                },
                dropdownColor: Colors.white,
                iconEnabledColor: Colors.blue.shade800,
              ),
              SizedBox(
                width: 10,
              ),
              DropdownButton<int>(
                value: selectedYear,
                items: years
                    .map((year) => DropdownMenuItem(
                        value: year,
                        child: Text(year.toString(), style: dropDownTextStyle)))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedYear = value!;
                    _focusedDay =
                        DateTime(value, _focusedDay.month, _focusedDay.day);
                  });
                },
                dropdownColor: Colors.white,
                iconEnabledColor: Colors.blue.shade800,
              ),
            ],
          ),
          SizedBox(height: 4),

          // Calendar
          TableCalendar(
            rowHeight: 26,
            firstDay: DateTime.utc(2000, 1, 1),
            lastDay: DateTime.utc(2100, 12, 31),
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            calendarFormat: _calendarFormat,
            startingDayOfWeek: StartingDayOfWeek.monday,
            headerVisible: false,
            calendarStyle: CalendarStyle(
              selectedTextStyle: TextStyle(fontSize: 9, color: Colors.white),
              todayTextStyle: TextStyle(fontSize: 9, color: Colors.white),
              defaultTextStyle: TextStyle(color: Colors.black87, fontSize: 12),
              weekendTextStyle: TextStyle(color: Colors.black87, fontSize: 12),
              todayDecoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              selectedDecoration: BoxDecoration(
                color: Colors.blue.shade800,
                shape: BoxShape.circle,
              ),
              outsideTextStyle: TextStyle(color: Colors.black45, fontSize: 12),
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
              weekendStyle: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            // calendarBuilders: CalendarBuilders(
            //   defaultBuilder: (context, day, focusedDay) {
            //     bool isHighlighted = highlightedDays
            //         .any((highlightedDay) => isSameDay(day, highlightedDay));
            //     return Center(
            //       child: Container(
            //         decoration: isHighlighted
            //             ? BoxDecoration(
            //                 color: Colors.blue.shade800, shape: BoxShape.circle)
            //             : null,
            //         padding: EdgeInsets.all(6),
            //         child: Text(
            //           day.day.toString(),
            //           style: TextStyle(
            //               color: isHighlighted ? Colors.white : Colors.black),
            //         ),
            //       ),
            //     );
            //   },
            // ),
          ),
        ],
      ),
    );
  }

  TextStyle get dropDownTextStyle => TextStyle(
      color: Colors.blue.shade800, fontWeight: FontWeight.bold, fontSize: 12);
}
