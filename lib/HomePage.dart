// ایمپورت بسته‌های مورد نیاز
import 'package:cubit_blocprovider_blocbuilder_base/bloc/counter_cubit.dart'; // دسترسی به کلاس CounterCubit
import 'package:flutter/material.dart'; // ابزارهای متریال دیزاین
import 'package:flutter_bloc/flutter_bloc.dart'; // ابزارهای مدیریت وضعیت با Bloc و Cubit

// تعریف ویجت صفحه اصلی
class HomePage extends StatelessWidget {
  const HomePage({super.key}); // تعریف کلید اختیاری برای ویجت

  @override
  Widget build(BuildContext context) {
    // متد build که ظاهر صفحه را تعریف می‌کند
    return Scaffold(
      appBar: AppBar(
        // اضافه کردن نوار ابزار بالای صفحه
        title: const Text('Counter App'), // عنوان صفحه
        centerTitle: true, // تنظیم عنوان به صورت وسط‌چین
      ),
      body: Center(
        child: Column(
          // ساختار ستونی برای چینش عناصر

          mainAxisAlignment: MainAxisAlignment.center,
          // قرار دادن محتوا در مرکز صفحه
          children: [
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                // بازسازی ویجت هنگام تغییر وضعیت
                return Text(
                  state.toString(), // نمایش مقدار شمارنده
                  style: const TextStyle(
                    fontSize: 40, // تنظیم اندازه متن
                    fontWeight: FontWeight.bold, // ضخیم کردن متن
                    color: Colors.blue, // رنگ متن
                  ),
                );
              },
            ),
            const SizedBox(height: 20), // فاصله بین متن و دکمه‌ها
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // چینش دکمه‌ها در مرکز
              children: [
                ElevatedButton(
                  onPressed: () {
                    // افزایش مقدار شمارنده
                    context.read<CounterCubit>().increase();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // رنگ سبز برای دکمه افزایش
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10), // تنظیم حاشیه داخلی دکمه
                  ),
                  child: const Text(
                    'Increase',
                    style: const TextStyle(
                      fontSize: 40, // تنظیم اندازه متن
                      fontWeight: FontWeight.bold, // ضخیم کردن متن
                      color: Colors.white, // رنگ متن
                    ),
                  ),
                ),
                const SizedBox(width: 20), // فاصله بین دو دکمه
                ElevatedButton(
                  onPressed: () {
                    // کاهش مقدار شمارنده
                    context.read<CounterCubit>().decrease();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // رنگ قرمز برای دکمه کاهش
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10), // تنظیم حاشیه داخلی دکمه
                  ),
                  child: const Text(
                    'Decrease',
                    style: const TextStyle(
                      fontSize: 40, // تنظیم اندازه متن
                      fontWeight: FontWeight.bold, // ضخیم کردن متن
                      color: Colors.white, // رنگ متن
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
