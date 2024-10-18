import 'package:cred2024_amanat/core/app_constants.dart'; // App-wide constants
import 'package:cred2024_amanat/features/pages/providers/display_data_provider.dart'; // Provider for display data
import 'package:cred2024_amanat/features/pages/providers/is_list_view_provider.dart'; // Provider to check view type (list/grid)
import 'package:cred2024_amanat/features/pages/view/categories/categories_list_page.dart'; // Page for list view
import 'package:cred2024_amanat/features/pages/view/categories/category_grid_page.dart'; // Page for grid view
import 'package:cred2024_amanat/features/pages/view/categories/widgets/widgets.dart'; // Widgets for categories page
import 'package:dotted_border/dotted_border.dart'; // Border package for visual styling
import 'package:flutter/material.dart'; 
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Riverpod for state management
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Screen util for responsive sizing
import 'package:gap/gap.dart'; // Adds space between widgets
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart'; // NeoPop custom button widget

class HomePage extends ConsumerWidget {
  static const routeName = '/home-page'; // Route name for HomePage
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final displayData = ref.watch(displayDataNotifierProvider); // Fetching data from provider
    bool toDisplay = displayData != null; // Checking if display data exists

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.w, // Horizontal padding
            vertical: 10.h,   // Vertical padding
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align widgets to start
            mainAxisAlignment: MainAxisAlignment.end, // Align widgets at the bottom
            children: [
              (toDisplay)
                  // Show cached image if data exists
                  ? Align(
                      alignment: Alignment.centerLeft,
                      child: CachedImage(
                        iconUrl: displayData.iconUrl!, // Display icon
                        dimension: 90.h,
                      ),
                    )
                  // Show a placeholder with a dotted border if no data
                  : DottedBorder(
                      borderType: BorderType.Rect,
                      color: Colors.white,
                      strokeWidth: 1.0,
                      child: SizedBox(
                        width: 90.h,  // Placeholder size
                        height: 90.h,
                      ),
                    ),
              Gap(80.h), // Gap between widgets
              
              // Display title text or placeholder dots
              Text(
                "CRED ${(toDisplay) ? displayData.name : "." * 10}", 
                style: TextStyle(
                  color: AppColors.whiteColor, // Title text color
                  fontSize: 21.h,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Gap(15.h), // Space below title
            
              // Display description or placeholder dots
              Text(
                (toDisplay)
                    ? displayData.description!  // Show description if available
                    : "." * 120,                // Placeholder text when data is missing
                style: TextStyle(
                  color: AppColors.greyTextColor,
                  fontSize: 25.h,
                  fontFamily: AppFonts.cirka,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0,
                  height: 1.2,
                ),
                maxLines: 2, // Limit description to 2 lines
                overflow: TextOverflow.ellipsis, // Ellipsis for overflow
                softWrap: true,
                textAlign: TextAlign.left,
              ),
              Gap(40.h), // Space below description
            
              // Button to navigate to categories list or grid
              NeoPopButton(
                color: Colors.white,
                onTapUp: () {
                  HapticFeedback.vibrate(); // Vibration feedback on button press
                  
                  bool isListView = ref.read(isListViewProvider); // Check if the view is list or grid
                  
                  // Navigate to the appropriate page based on view type
                  if (isListView) {
                    Navigator.of(context)
                        .pushNamed(CategoriesListPage.routeName);
                  } else {
                    Navigator.of(context)
                        .pushNamed(CategoriesGridPage.routeName);
                  }
                },
                onTapDown: () => HapticFeedback.vibrate(), // Vibration feedback on tap down
                bottomShadowColor: AppColors.bottomShadowColor, // Button shadow color
                rightShadowColor: AppColors.rightShadowColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Center align button content
                    children: [
                      Text(
                        "Go to category", // Button text
                        style: TextStyle(
                          color: AppColors.scaffoldBackgroundColor, // Button text color
                          fontSize: 16.h,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Gap(5.w), // Gap between text and icon
                      
                      // Arrow icon next to button text
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: AppColors.scaffoldBackgroundColor,
                        size: 25.h,
                      )
                    ],
                  ),
                ),
              ),
              Gap(20.h), // Space below button
            ],
          ),
        ),
      ),
    );
  }
}
