import 'dart:async';

import 'package:cred2024_amanat/features/pages/view/home_page/home_page.dart';
import 'package:cred2024_amanat/features/requestdata/provider/request_data_notifier.dart';
import 'package:cred2024_amanat/features/requestdata/viewmodel/requestdata_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class LoadingPage extends ConsumerStatefulWidget {
  const LoadingPage({super.key});

  @override
  ConsumerState<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends ConsumerState<LoadingPage> {
  Timer? _timer;
  int _counter = 0;
  bool _showRefreshButton = false;
  bool _isNavigating = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startPeriodicApiCall();
    });
  }

  // Starts periodic API calls to fetch data
  void _startPeriodicApiCall() {
    _counter = 0;
    _showRefreshButton = false;
    _timer = Timer.periodic(
      const Duration(seconds: 1), // Duration in seconds is more readable
      (_) => _getData(),
    );
  }

  // Fetches data and updates UI based on the response
  Future<void> _getData() async {
    if (!mounted) return;
    await ref.read(requestDataViewModelProvider.notifier).getData();
    if (mounted && !_isNavigating) {
      setState(() {
        _counter++;
        if (_counter >= 3) {
          _timer?.cancel();
          _showRefreshButton = true;
        }
      });
    }
  }

  // Restarts the periodic API calls when the refresh button is tapped
  void _onRefresh() {
    if (mounted) {
      setState(() {
        _startPeriodicApiCall();
      });
    }
  }

  // Navigates to the home page and stops any ongoing API calls
  void _navigateToHomePage() {
    if (!_isNavigating && mounted) {
    // if (mounted) {
      _isNavigating = true;
      _timer?.cancel();
      Navigator.of(context).pushReplacementNamed(HomePage.routeName);
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Listens for changes in the requestDataNotifierProvider
    ref.listen(
      requestDataNotifierProvider,
      (_, requestData) {
        if (requestData != null && !_isNavigating) {
        // if (requestData != null) {
          _navigateToHomePage();
        }
      },
    );
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/cred_logo.png',
                height: 100.h,
              ),
              Gap(40.h),
              SizedBox(
                height: 35.h,
                width: 35.h,
                child: _showRefreshButton
                    ? GestureDetector(
                        onTap: _onRefresh,
                        child: const Icon(
                          Icons.refresh,
                          color: Colors.white,
                          size: 40,
                        ),
                      )
                    : const CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        strokeWidth: 3.0,
                      ),
              ),
              Gap(40.h),
              Text(
                _showRefreshButton ? "Tap to retry" : "Fetching data...",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
