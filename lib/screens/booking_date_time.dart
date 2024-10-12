// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:car_rantal_application/models/card.dart';
import 'package:car_rantal_application/screens/payment_method.dart';
import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:car_rantal_application/widgets/Widget%20Booking%20Date&Time/dropdown_menu_time.dart';
import 'package:car_rantal_application/widgets/Widget%20Custom%20Button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:table_calendar/table_calendar.dart';

class BookingDateTime extends StatefulWidget {
  final Car car;
  const BookingDateTime({super.key, required this.car});

  @override
  State<BookingDateTime> createState() => _BookingDateTimeState();
}

class _BookingDateTimeState extends State<BookingDateTime> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: IconButton(
                      icon: Icon(
                        Iconsax.logout,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 75),
                    child: Text(
                      'Date & Time',
                      style: TextStyle(fontFamily: 'InriaSans', fontSize: 22),
                    ),
                  ),
                ],
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
                  focusedDay: today,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                  onDaySelected: _onDaySelected,
                  availableCalendarFormats: const {
                    CalendarFormat.month: 'Month',
                  },
                  calendarStyle: CalendarStyle(
                      todayDecoration: BoxDecoration(
                        color: const Color.fromARGB(180, 57, 144, 164),
                        shape: BoxShape.circle,
                      ),
                      selectedDecoration: BoxDecoration(
                        color: AppColors.backgroundColorBlue,
                        shape: BoxShape.circle,
                      )),
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false, // Hide the format button
                    titleCentered: true, // Center the header title
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text('Selected Day = ' + today.toString().split(' ')[0]),
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
                              builder: (context) => PaymentMethod(
                                    car: widget.car,
                                  )));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
