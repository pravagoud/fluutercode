import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MeetingScheduler());
}

class MeetingScheduler extends StatefulWidget {
  const MeetingScheduler({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MeetingSchedulerState createState() => _MeetingSchedulerState();
}

class _MeetingSchedulerState extends State<MeetingScheduler> {
  String meetingTitle = 'project overview';
  int meetingDuration = 30;
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  void scheduleMeeting() {
    // Implement your logic for scheduling the meeting
    String formattedTime = selectedTime.format(context);
    if (kDebugMode) {
      print('Meeting Scheduled: $meetingTitle');
    }
    if (kDebugMode) {
      print('Date: ${selectedDate.toString().split(' ')[0]}');
    }
    if (kDebugMode) {
      print('Time: $formattedTime');
    }
    if (kDebugMode) {
      print('Duration: $meetingDuration minutes');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meeting Scheduler'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Meeting Title',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    meetingTitle = value;
                  });
                },
              ),
              const SizedBox(height: 16),
              const Text(
                'Meeting Duration (minutes)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Slider(
                value: meetingDuration.toDouble(),
                min: 15,
                max: 120,
                divisions: 11,
                onChanged: (value) {
                  setState(() {
                    meetingDuration = value.toInt();
                  });
                },
              ),
              Text(
                '$meetingDuration minutes',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Select Date',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: selectedDate,
                    firstDate: DateTime(2022),
                    lastDate: DateTime(2025),
                  );
                  if (picked != null && picked != selectedDate) {
                    setState(() {
                      selectedDate = picked;
                    });
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    selectedDate.toString().split(' ')[0],
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Select Time',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () async {
                  final TimeOfDay? picked = await showTimePicker(
                    context: context,
                    initialTime: selectedTime,
                  );
                  if (picked != null && picked != selectedTime) {
                    setState(() {
                      selectedTime = picked;
                    });
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    selectedTime.format(context),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: scheduleMeeting,
                child: const Text('Schedule Meeting'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
