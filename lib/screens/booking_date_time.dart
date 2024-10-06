// ignore_for_file: prefer_const_constructors

import 'package:car_rantal_application/models/card.dart';
import 'package:car_rantal_application/screens/payment_method.dart';
import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:car_rantal_application/widgets/Widget%20Booking%20Date&Time/dropdown_menu_time.dart';
import 'package:car_rantal_application/widgets/Widget%20Custom%20Button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class BookingDateTime extends StatefulWidget {
  const BookingDateTime({super.key});

  @override
  State<BookingDateTime> createState() => _BookingDateTimeState();
}

class _BookingDateTimeState extends State<BookingDateTime> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Column(
            children: [
              Text(
                'Date & Time',
                style: TextStyle(fontFamily: 'InriaSans', fontSize: 22),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              Container(
                margin: EdgeInsets.all(20), // Margin around the calendar
                padding: EdgeInsets.all(8), // Padding inside the container
                decoration: BoxDecoration(
                  color: AppColors.calendar,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                  availableCalendarFormats: const {
                    CalendarFormat.month: 'Month',
                  },
                  calendarStyle: CalendarStyle(
                    todayDecoration: BoxDecoration(
                      color: AppColors.btnBlue,
                      shape: BoxShape.circle,
                    ),
                  ),
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false, // Hide the format button
                    titleCentered: true, // Center the header title
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20), // Adjust padding
                alignment: Alignment.centerRight, // Align button to the right
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.btnBlue, // Background color
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12), // Rounded corners
                    ),
                  ),
                  child: Text('Done'),
                ),
              ),
              SizedBox(
                height: height * 0.045,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownMenuTime(
                      title: 'Pick-up time',
                    ),
                    DropdownMenuTime(
                      title: 'Return time',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.065,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomButton(
                    titleBtn: 'Booking',
                    colorBtn: AppColors.btnBlue,
                    colorTitle: Colors.white,
                    fontBtn: 18,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentMethod()));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
