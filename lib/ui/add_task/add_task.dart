import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen(this.addtask, {Key? key}) : super(key: key);
  final Function(String text) addtask;

  @override
  Widget build(BuildContext context) {
    String task = '';
    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                task = value;
              },
            ),
            TextButton(
                onPressed: () {
                  addtask(task);
                },
                child: Text('Add'))
          ],
        ),
      ),
    );
  }
}
