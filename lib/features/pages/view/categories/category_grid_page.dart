import 'package:cred2024_amanat/features/pages/view/categories/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:cred2024_amanat/core/app_constants.dart';

import 'package:cred2024_amanat/features/requestdata/provider/request_data_notifier.dart';

class CategoriesGridPage extends ConsumerStatefulWidget {
  static const routeName =
      "/categories-grid-page"; // Define route name for navigation

  const CategoriesGridPage({super.key});

  @override
  ConsumerState<CategoriesGridPage> createState() =>
      _CategoriesGridPageState(); // Create the state for this widget
}

class _CategoriesGridPageState extends ConsumerState<CategoriesGridPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller; // Animation controller for transitions
  late Animation<double> _animation; // Animation for fading in items

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
          milliseconds: animationDuration), // Animation duration from constants
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(_controller); // Define animation tween

    _controller.forward(); // Start the animation
  }

  @override
  void dispose() {
    _controller.dispose(); // Clean up the animation controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final requestData =
        ref.watch(requestDataNotifierProvider); // Fetch data from the provider
    final header = requestData!
        .exploreCred!.templateProperties!.header!; // Access header data
    final sections = requestData.sections!; // Get the sections for grid

    // GridView to display sections and their items
    var gridView = ListView.separated(
      physics:
          const NeverScrollableScrollPhysics(), // Disable scrolling inside list
      separatorBuilder: (context, index) => Gap(50.h), // Space between items
      shrinkWrap: true, // Ensure ListView takes only as much space as needed
      itemCount: sections.length, // Number of sections
      itemBuilder: (context, index) {
        final section = sections[index];

        return Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children to the start
          children: [
            Hero(
              tag: section.templateProperties!.header!
                  .identifier!, // Hero animation for transitions
              child: Material(
                color: Colors.transparent,
                child: GreyMediumText(
                  text: section
                      .templateProperties!.header!.title!, // Section title
                  fontSize: 13,
                ),
              ),
            ),
            Gap(15.h), // Space after title
            Wrap(
              runSpacing: 7.h, // Vertical spacing between items
              children: section.templateProperties!.items!
                  .map(
                    (item) => CategoryItem(
                      itemDisplayData:
                          item.displayData!, // Display category item
                      isGridView: true, // Grid view mode
                      animation: _animation, // Apply animation to items
                    ),
                  )
                  .toList(),
            ),
          ],
        );
      },
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 30.w,
            right: 20.w,
          ), // Add padding for better layout
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align column to start
              children: [
                Gap(60.h), // Space at the top
                GreyMediumText(
                  text: header.title!, // Display the header title
                ),
                TitleAndViewRow(
                  text: header.subtitleTitle!, // Subtitle and view row
                ),
                Gap(30.h), // Space before grid view
                gridView, // Display the grid of categories
              ],
            ),
          ),
        ),
      ),
    );
  }
}
