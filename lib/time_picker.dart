import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Time Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _selectTime(context);
              },
              child: Text('Choose Time'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(// 24 hours format
                //"${selectedTime.hour}:${selectedTime.minute}",
                // 12 hours format
                '${selectedTime.format(context)}',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
  _selectTime(BuildContext Context) async{
    final TimeOfDay? timeOfDay =await showTimePicker(
        context: context,
        initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if(timeOfDay !=null && timeOfDay != selectedTime){
      setState(() {
        selectedTime =timeOfDay;
      });
    }
  }

}
