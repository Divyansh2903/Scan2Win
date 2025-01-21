import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants/textstyles.dart';


class StyledDateTimePicker extends StatefulWidget {
  final TextEditingController controller;
  final Function(DateTime) onDateTimeSelected;
  final String label;

  const StyledDateTimePicker({
    super.key,
    required this.controller,
    required this.onDateTimeSelected,
    this.label = "",
  });

  @override
  State<StyledDateTimePicker> createState() => _StyledDateTimePickerState();
}

class _StyledDateTimePickerState extends State<StyledDateTimePicker> {
  DateTime? selectedDateTime;

  Future<void> _showDateTimePicker() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDateTime ?? DateTime.now(),
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: Theme.of(context).primaryColor,
              onPrimary: Colors.white,
              surface: Colors.white,
              onSurface: Colors.black,
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: Theme.of(context).primaryColor,
                onPrimary: Colors.white,
                surface: Colors.white,
                onSurface: Colors.black,
              ),
            ),
            child: child!,
          );
        },
      );

      if (pickedTime != null) {
        setState(() {
          selectedDateTime = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );

          String formattedDateTime =
              DateFormat('MMM d, yyyy h:mm a').format(selectedDateTime!);

          widget.controller.text = formattedDateTime;
          widget.onDateTimeSelected(selectedDateTime!);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: widget.label.isNotEmpty || widget.label != "",
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(widget.label,
                style:
                    secondaryTextStyle.copyWith(fontWeight: FontWeight.bold)),
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: widget.controller,
          readOnly: true,
          onTap: _showDateTimePicker,
          decoration: InputDecoration(
            hintText: "Enter your date & time",
            hintStyle: hintTextStyle,
            filled: true,
            fillColor: const Color.fromRGBO(241, 241, 241, 1),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            suffixIcon: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}
