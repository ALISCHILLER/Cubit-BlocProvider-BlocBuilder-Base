// ایمپورت بسته‌های مورد نیاز
import 'package:cubit_blocprovider_blocbuilder_base/bloc/counter_cubit.dart'; // دسترسی به کلاس CounterCubit
import 'package:flutter/material.dart'; // ابزارهای متریال دیزاین
import 'package:flutter_bloc/flutter_bloc.dart'; // ابزارهای مدیریت وضعیت با Bloc و Cubit

// تعریف ویجت صفحه اصلی
class HomePage extends StatelessWidget {
  const HomePage({super.key}); // تعریف کلید اختیاری برای ویجت

  @override
  Widget build(BuildContext context) {

    // با استفاده از context.watch وضعیت فعلی (state) را از CounterCubit دریافت می‌کنیم
   // var state = context.watch<CounterCubit>().state;

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
            Builder(
              builder: (context) {
                // با استفاده از context.watch وضعیت فعلی (state) را از CounterCubit دریافت می‌کنیم
                var state = context.watch<CounterCubit>().state;

                // بازگرداندن ویجت Text برای نمایش مقدار شمارنده
                return Text(
                  state.toString(), // نمایش مقدار شمارنده در قالب متن
                  style: const TextStyle(
                    fontSize: 40, // تنظیم اندازه متن به 40
                    fontWeight: FontWeight.bold, // نمایش متن به صورت ضخیم (Bold)
                    color: Colors.blue, // تنظیم رنگ متن به آبی
                  ),
                );
              },
            ),
            // Text(
            //   state.toString(), // نمایش مقدار شمارنده در قالب متن
            //   style: const TextStyle(
            //     fontSize: 40, // تنظیم اندازه متن به 40
            //     fontWeight: FontWeight.bold, // تنظیم متن به صورت ضخیم
            //     color: Colors.blue, // تنظیم رنگ متن به آبی
            //   ),
            // ),

            // BlocListener<CounterCubit, int>(
            //   // BlocListener برای گوش دادن به تغییرات وضعیت و اجرای یک عملیات جانبی استفاده می‌شود.
            //   listener: (context, state) {
            //     // این متد هر بار که وضعیت (state) تغییر کند، اجرا می‌شود.
            //     ScaffoldMessenger.of(context)
            //         // پیام SnackBar برای نمایش یک پیغام موقت به کاربر
            //         .showSnackBar(const SnackBar(
            //       // محتوای پیام
            //       content: Text("test"),
            //     ));
            //   },
            //   child: Container(),
            //   // `child` ویجتی است که داخل BlocListener قرار دارد و نمایش داده می‌شود.
            //   // در اینجا به صورت پیش‌فرض یک `Container` خالی قرار داده شده است.
            // ),
            // BlocConsumer<CounterCubit, int>(
            //
            //   buildWhen: (previous, current) {
            //     // بررسی وضعیت جدید (current) برای بازسازی ویجت
            //     // اگر مقدار جدید برابر با 3 باشد، بازسازی ویجت انجام شود
            //     if (current > 5) return true;
            //
            //     // در غیر این صورت، بازسازی ویجت انجام نشود
            //     return false;
            //   },
            //
            //   listenWhen: (previous, current) {
            //     // بررسی وضعیت جدید (current)
            //     // اگر مقدار جدید برابر با 3 باشد، تغییر وضعیت پردازش شود
            //     if (current == 3) return true;
            //
            //     // در غیر این صورت، تغییر وضعیت نادیده گرفته شود
            //     return false;
            //   },
            //
            //   // BlocConsumer همزمان هم برای گوش دادن به تغییرات وضعیت (listener) و
            //   // هم برای بازسازی ویجت‌ها (builder) استفاده می‌شود.
            //   listener: (context, state) {
            //     // این متد هر بار که وضعیت (state) تغییر کند، اجرا می‌شود.
            //     ScaffoldMessenger.of(context)
            //         // پیام SnackBar برای نمایش یک پیغام موقت به کاربر
            //         .showSnackBar(const SnackBar(
            //       // محتوای پیام که به کاربر نمایش داده می‌شود
            //       content: Text("test"),
            //     ));
            //   },
            //   builder: (context, state) {
            //     // متد builder هنگام تغییر وضعیت فراخوانی می‌شود
            //     // و وظیفه دارد رابط کاربری را بازسازی کند.
            //     return Text(
            //       state.toString(), // نمایش مقدار شمارنده در قالب متن
            //       style: const TextStyle(
            //         fontSize: 40, // تنظیم اندازه متن به 40
            //         fontWeight: FontWeight.bold, // تنظیم متن به صورت ضخیم
            //         color: Colors.blue, // تنظیم رنگ متن به آبی
            //       ),
            //     );
            //   },
            // ),

            // BlocBuilder<CounterCubit, int>(
            //   builder: (context, state) {
            //     // بازسازی ویجت هنگام تغییر وضعیت
            //     return Text(
            //       state.toString(), // نمایش مقدار شمارنده
            //       style: const TextStyle(
            //         fontSize: 40, // تنظیم اندازه متن
            //         fontWeight: FontWeight.bold, // ضخیم کردن متن
            //         color: Colors.blue, // رنگ متن
            //       ),
            //     );
            //   },
            // ),
            const SizedBox(height: 20),
            // فاصله بین متن و دکمه‌ها
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
