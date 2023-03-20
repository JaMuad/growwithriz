import 'package:flutter/material.dart';
import 'package:growwithriz/schedulefolder//meeting_data_source.dart';
import 'package:growwithriz/schedulefolder/meeting.dart';

import 'package:syncfusion_flutter_calendar/calendar.dart';

class calendarwidget extends StatefulWidget {
  const calendarwidget({super.key});

  @override
  State<calendarwidget> createState() => _calendarwidgetState();
}

class _calendarwidgetState extends State<calendarwidget> {
List<Meeting> _getDataSource() {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
        DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    meetings.add(Meeting(
        'Çonference', startTime, endTime, const Color(0xFF0F8644), false));
    meetings.add(Meeting(
        'Çonference2', startTime, endTime, const Color(0xFF0F8344), false));
    meetings.add(Meeting(
        'Çonference', startTime, endTime, const Color(0xFF0F8654), false));
    return meetings;
  }

  CalendarView calendarView = CalendarView.month;
  CalendarController calendarController = CalendarController();

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<MeetingProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Schedule'),
          foregroundColor: Colors.black,
          backgroundColor: Colors.green,
          actions: [
            IconButton(
              onPressed: () {
                // provider.addMeeting();
              },
              icon: const Icon(Icons.add),
            ),
            IconButton(
                onPressed: () {
                  // provider.editMeeting(0);
                },
                icon: const Icon(Icons.edit)),
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () {
                      setState(() {
                        calendarView = CalendarView.month;
                        calendarController.view = calendarView;
                      });
                    },
                    child: Text("Month")),
                OutlinedButton(
                    onPressed: () {
                      setState(() {
                        calendarView = CalendarView.week;
                        calendarController.view = calendarView;
                      });
                    },
                    child: Text("Week")),
                OutlinedButton(
                    onPressed: () {
                      setState(() {
                        calendarView = CalendarView.day;
                        calendarController.view = calendarView;
                      });
                    },
                    child: Text("Day")),
              ],
            ),
            Expanded(
              child: SfCalendar(
                view: calendarView,
                initialSelectedDate: DateTime.now(),
                controller: calendarController,
                cellBorderColor: Colors.green,
                // dataSource: MeetingDataSource(_getDataSource()),
                selectionDecoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.red, width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  shape: BoxShape.rectangle,
                ),
                monthViewSettings: MonthViewSettings(
                  appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
                  showAgenda: true,
                ),
                blackoutDates: [
                  DateTime.now().subtract(Duration(hours: 48)),
                  DateTime.now().subtract(Duration(hours: 24)),
                ],
              ),
            )
          ],
        ));
  }
}
