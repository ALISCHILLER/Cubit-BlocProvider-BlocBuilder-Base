import 'package:cubit_blocprovider_blocbuilder_base/HomePage.dart';
import 'package:cubit_blocprovider_blocbuilder_base/bloc/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// نقطه ورود برنامه Flutter
void main() {
  runApp(const MyApp()); // اجرای اپلیکیشن با ویجت MyApp
}

/// ویجت اصلی برنامه
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // عنوان برنامه
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // تعریف تم اصلی برنامه با رنگ پایه بنفش
        useMaterial3: true, // استفاده از متریال 3
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'), // تعریف صفحه اصلی برنامه
    );
  }
}

/// صفحه اصلی برنامه که به صورت Stateful تعریف شده است.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title; // عنوان صفحه که از ویجت والد دریافت می‌شود.

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

/// وضعیت صفحه اصلی
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (_) => CounterCubit(3), // ایجاد نمونه‌ای از CounterCubit با مقدار اولیه 3
      child: const HomePage(), // استفاده از صفحه HomePage به‌عنوان فرزند BlocProvider
    );
  }
}
