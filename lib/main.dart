import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:tanaman_1/TanamanHias/home_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // Perbaikan: ganti "enable" dengan "enabled"
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true, // Perbaikan: "useInheritedMediaQuery" bukan deprecated
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeScreen(), // Perbaikan: pastikan const digunakan di sini
    );
  }
}
