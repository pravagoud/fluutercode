// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() {
  runApp(
    const MaterialApp(home: MyHome()), // use MaterialApp
  );
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

Widget build2(BuildContext context) {
  return Scaffold(
      body: SfCalendar());
}
@override
Widget build(BuildContext context) {
  return Scaffold(
       body: SfCalendar(
    view: CalendarView.month,
  ));
}


}




