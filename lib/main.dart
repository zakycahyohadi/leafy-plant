import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:tanaman_1/TanamanHias/home_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // Ubah "enable" menjadi "enabled"
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: deprecated_member_use
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:  HomeScreen(), // Pastikan const digunakan di sini
    );
  }
}
