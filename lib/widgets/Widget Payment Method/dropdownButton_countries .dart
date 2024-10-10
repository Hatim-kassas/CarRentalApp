// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, library_private_types_in_public_api

import 'package:car_rantal_application/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CountryDropdown extends StatefulWidget {
  @override
  _CountryDropdownState createState() => _CountryDropdownState();
}

class _CountryDropdownState extends State<CountryDropdown> {
  // List of countries or regions
  final List<String> countries = [
    'United States',
    'Canada',
    'United Kingdom',
    'France',
    'Germany',
    'Spain',
    'Italy',
    'India',
    'China',
    'Japan',
    'Brazil',
    'Australia',
    'South Africa',
    'Mexico',
    'Argentina',
    'Russia',
    'Saudi Arabia',
    'Turkey',
    'South Korea',
    'Egypt',
    'Nigeria',
    'Indonesia',
    'Thailand',
    'Pakistan',
    'Bangladesh',
    'Vietnam',
    'Philippines',
    'Malaysia',
    'Singapore',
    'New Zealand',
    'Switzerland',
    'Sweden',
    'Norway',
    'Finland',
    'Denmark',
    'Netherlands',
    'Belgium',
    'Portugal',
    'Greece',
    'Austria',
    'Poland',
    'Hungary',
    'Romania',
    'Czech Republic',
    'Slovakia',
    'Bulgaria',
    'Croatia',
    'Serbia',
    'Slovenia',
    'Ireland',
    'Iceland',
    'Israel',
    'United Arab Emirates',
    'Qatar',
    'Kuwait',
    'Oman',
    'Morocco',
    'Tunisia',
    'Algeria',
    'Kenya',
    'Ghana',
    'Ethiopia',
    'Chile',
    'Colombia',
    'Peru',
    'Uruguay',
    'Paraguay',
    'Venezuela',
    'Cuba',
    'Costa Rica',
    'Panama',
    'Jamaica',
    'Honduras',
    'El Salvador',
    'Guatemala',
    'Bolivia',
    'Ecuador',
    'Sri Lanka',
    'Nepal',
    'Maldives',
    'Mauritius',
    'Madagascar',
    'Zambia',
    'Zimbabwe',
    'Botswana',
    'Mozambique',
    'Uganda',
    'Tanzania',
    'Rwanda',
    'Senegal',
    'Ivory Coast',
    'Cameroon',
    'Democratic Republic of the Congo'
  ];

  // Selected country (initially null)
  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Country or Region',
          style: TextStyle(
              color: Colors.black, fontFamily: 'InriaSans', fontSize: 15),
        ),
        SizedBox(height: 10),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: const Color.fromARGB(75, 102, 102, 102), width: 1),
              borderRadius: BorderRadius.circular(6)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: const Color.fromARGB(255, 26, 26, 26), width: 1),
              borderRadius: BorderRadius.circular(6)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(6)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: const Color.fromARGB(75, 102, 102, 102), width: 1),
              borderRadius: BorderRadius.circular(6)),
              contentPadding: EdgeInsets.symmetric(horizontal: 12),
          ),
          value: selectedCountry,
          hint: Text('Select your country or region',
              style: TextStyle(
                  color: const Color.fromARGB(74, 87, 87, 87),
                  fontFamily: 'InriaSans',
                  fontSize: 15)),
          icon: Icon(Icons.arrow_drop_down),
          isExpanded: true,
          onChanged: (String? newValue) {
            setState(() {
              selectedCountry = newValue;
            });
          },
          items: countries.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}
