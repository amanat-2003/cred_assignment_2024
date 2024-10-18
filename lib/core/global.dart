import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class Global {
  // Custom CacheManager for managing image caching
  static final customCacheManager = CacheManager(
    Config(
      'customCacheKey', // Unique key for this cache configuration
      maxNrOfCacheObjects: 100, // Maximum number of cache objects
    ),
  );

  // Initialize app settings and configurations
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Set preferred device orientations
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
