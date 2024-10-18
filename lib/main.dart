import 'package:cred2024_amanat/core/app_constants.dart'; // Importing app constants
import 'package:cred2024_amanat/core/global.dart'; // Importing global functions and configurations
import 'package:cred2024_amanat/core/router.dart'; // Importing app routing logic
import 'package:flutter/material.dart'; // Flutter's material design library
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Riverpod for state management
import 'package:flutter_screenutil/flutter_screenutil.dart'; // ScreenUtil for responsive design

// Main function to initialize global settings and run the app
void main() async {
  await Global.init(); // Initialize global configurations
  runApp(
    const ProviderScope(
      child: MyApp(), // Wrap the app with Riverpod's ProviderScope
    ),
  );
}

// Root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852), // Design size for responsive layout
      minTextAdapt: true, // Adjust text size based on screen dimensions
      splitScreenMode: true, // Enable split-screen mode support
      child: MaterialApp(
        debugShowCheckedModeBanner: false, // Disable debug banner
        title: 'CRED Assignment', // App title
        darkTheme: AppTheme.appThemeData(), // Set dark theme for the app
        themeMode: ThemeMode.dark, // Always use dark mode
        initialRoute: '/',
        onGenerateRoute: (settings) {
          return generateRoute(settings); // Generate routes for navigation
        },
      ),
    );
  }
}
