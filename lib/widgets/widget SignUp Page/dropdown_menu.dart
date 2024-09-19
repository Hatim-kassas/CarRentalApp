// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, unused_local_variable

import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:flutter/material.dart';

class DropdownMenuWidget extends StatefulWidget {
  const DropdownMenuWidget({super.key});

  @override
  State<DropdownMenuWidget> createState() => _DropdownMenuWidgetState();
}

class _DropdownMenuWidgetState extends State<DropdownMenuWidget> {
  List<String> items = ['Select Options', 'Booking User', 'Company Owner'];
  String? deafultSelected = 'Select Options';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(children: [
      Container(
        width: width,
        decoration: BoxDecoration(
            color: AppColors.selectOption,
            borderRadius: BorderRadius.circular(20)),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            underline: null,
            value: deafultSelected,
            icon: Icon(Icons.keyboard_double_arrow_down),
            iconSize: 26,
            iconEnabledColor: Colors.white,
            iconDisabledColor: Colors.white,
            dropdownColor: AppColors.selectOption,
            style: TextStyle(color: Colors.white, fontSize: 20),
            // decoration: InputDecoration(
            //   focusedBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(20),
            //     borderSide: BorderSide.none, // Remove the default border
            //   ),
            // ),
            items: items.map((item) {
              return DropdownMenuItem(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: (item) => setState(() => deafultSelected = item),
            isExpanded: true,
          ),
        ),
      ),
    ]);
  }
}
