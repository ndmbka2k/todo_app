import 'package:flutter/material.dart';

import 'package:todo_app/config/constants.dart';
import 'package:todo_app/ui/add_task/add_task.dart';
import 'package:todo_app/ui/component/decor_circle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/ui/component/text_style.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundAppColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 307.h,
            width: 375.w,
            color: const Color(0xFF50C2C9),
            child: Stack(
              children: [
                const DecorCircle(),
                Column(
                  children: [
                    SizedBox(
                      height: 133.h,
                    ),
                    const Center(
                      child: Image(
                        image: AssetImage('assets/images/img_avatar.png'),
                      ),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    const Center(
                      child: TextBold(
                        textContent: 'Welcome, Minh',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 31.w, right: 21.h, top: 25.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Good Afternoon',
                      style: TextStyle(
                          letterSpacing: 1.1.sp,
                          fontFamily: 'Poppins',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                ),
                SizedBox(
                  height: 120.h,
                  width: double.infinity,
                  child: const Center(
                    child: Image(
                      image: AssetImage('assets/images/img_clock.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const TextBold(textContent: 'Tasks List'),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                    width: 323.w,
                    height: 248.h,
                    padding: EdgeInsets.only(
                        top: 26.h, bottom: 20.h, left: 21.w, right: 32.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24.r),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x40000000),
                          blurRadius: 7.r,
                        ),
                      ],
                    ),
                    child: const TaskList())
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const InstructionText(
              text: 'Tasks List',
            ),
            GestureDetector(
              child: const Icon(
                Icons.add_circle_outline,
                color: buttonColor,
              ),
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => AddTaskScreen((String task) {
                          setState(() {
                            contentTaskList.add(Task(text: task));
                          });
                          Navigator.pop(context);
                        }));
              },
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: contentTaskList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  contentTaskList[index].text,
                  style: TextStyle(
                      decoration: contentTaskList[index].check
                          ? TextDecoration.lineThrough
                          : null),
                ),
                leading: SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: Checkbox(
                    value: contentTaskList[index].check,
                    onChanged: (value) {
                      setState(() {
                        contentTaskList[index].check = value!;
                      });
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class Task {
  final String text;
  bool check;
  Task({this.check = false, required this.text});
}

List<Task> contentTaskList = [
  Task(
    check: false,
    text: "Cook Rice and Chicken at 10 am",
  ),
  Task(
    check: false,
    text: "Learn Reactjs at 12 pm",
  ),
  Task(
    check: false,
    text: "Have Launch  at 1pm",
  ),
  Task(
    check: false,
    text: "Learn HTML and CSS at 3pm",
  ),
  Task(
    check: false,
    text: "Have Dinner at 8pm",
  ),
];
