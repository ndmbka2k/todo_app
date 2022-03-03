import 'package:flutter/material.dart';
import 'package:todo_app/ui/intro_screen/intro_screen.dart';
import 'package:todo_app/ui/login_screen/login_screen.dart';
import 'package:todo_app/ui/register_screen/register_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/ui/user_screen/user_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        home: const RegisterScreen(),
        routes: {
          '/intro_screen': (context) => const IntroScreen(),
          '/register_screen': (context) => const RegisterScreen(),
          '/login_screen': (context) => const LogInScreen(),
          '/user_screen': (context) => const UserScreen()
        },
      ),
    );
  }
}
