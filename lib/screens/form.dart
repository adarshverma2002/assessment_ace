import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

class formFields extends StatelessWidget {
  const formFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text(
                      "Enter Project Name*",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black87)),
                    hintText: "Enter Project Name",
                  ),
                ),
              ), // Project name

              Row(
                children: [
                  SizedBox(width: 5),
                  Expanded(
                      child: Text(
                    "Pick Your Date*",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.left,
                  )),
                ],
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black87, width: 2),
                    borderRadius: BorderRadius.circular(8)),
                child: CalendarDatePicker2(
                  config: CalendarDatePicker2Config(
                    calendarType: CalendarDatePicker2Type.single,
                  ),
                  initialValue: [],
                ),
              ),
              SizedBox(height: 40),

              Row(
                children: [
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      "Enter Project Details*",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // height: 100,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      hintText: "Enter Description"),
                ),
              ), //
            ],
          ),
        ),
      ),
    );
  }
}
