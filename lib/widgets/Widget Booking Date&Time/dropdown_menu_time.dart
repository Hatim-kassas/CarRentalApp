// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DropdownMenuTime extends StatefulWidget {
  final String title;
  const DropdownMenuTime({super.key, required this.title});

  @override
  State<DropdownMenuTime> createState() => _DropdownMenuTimeState();
}

class _DropdownMenuTimeState extends State<DropdownMenuTime> {
  String? selectedTime;

  // List of time options (you can modify the times as needed)
  final List<String> timeSlots = [
    '08:00 AM',
    '09:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 PM',
    '01:00 PM',
    '02:00 PM',
    '03:00 PM',
    '04:00 PM',
    '05:00 PM',
    '06:00 PM',
    '07:00 PM',
    '08:00 PM',
    '09:00 PM',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(fontFamily: 'InriaSans', fontSize: 15),
        ),
        SizedBox(
          width: width * 0.42,
          child: DropdownButtonFormField<String>(
            value: selectedTime, // Currently selected time
            hint: Text('Select Time'),
            onChanged: (String? newValue) {
              setState(() {
                selectedTime = newValue;
              });
            },
            items: timeSlots.map((String time) {
              return DropdownMenuItem<String>(
                value: time,
                child: Text(time),
              );
            }).toList(),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
