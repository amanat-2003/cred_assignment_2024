// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:cred2024_amanat/core/app_constants.dart'; // Importing app constants
import 'package:cred2024_amanat/features/pages/view/categories/widgets/widgets.dart'; // Widgets for category page
import 'package:cred2024_amanat/features/requestdata/provider/request_data_notifier.dart'; // Provider for request data

// CategoriesListPage: Stateful widget to display the list of categories
class CategoriesListPage extends ConsumerStatefulWidget {
  static const routeName = "/categories-page"; // Route name for navigation
  const CategoriesListPage({super.key});

  @override
  ConsumerState<CategoriesListPage> createState() =>
      _CategoriesListPageState(); // Creating state
}

class _CategoriesListPageState extends ConsumerState<CategoriesListPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller=AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: animationDuration),
    ); // Animation controller for UI animation
  late Animation<double> _animation; // Animation object to control opacity

  @override
  void initState() {
    super.initState();

    // Initializing animation controller with duration
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: animationDuration),
    );

    // Defining a Tween animation for fade-in effect
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.forward(); // Start the animation immediately
  }

@override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when no longer needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Watching requestData provider for changes
    final requestData = ref.watch(requestDataNotifierProvider);

    // Extracting header and sections data from the fetched request data
    final header = requestData!.exploreCred!.templateProperties!.header!;
    final sections = requestData.sections!;

    // Building ListView of sections with each section's items
    var listView = ListView.separated(
      physics:
          const NeverScrollableScrollPhysics(), // Disable scrolling for the list
      separatorBuilder: (context, index) =>
          Gap(50.h), // Add gap between sections
      shrinkWrap: true, // Ensure ListView takes only as much space as needed
      itemCount: sections.length, // Number of sections
      itemBuilder: (context, index) {
        final section = sections[index]; // Get each section

        return Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children to the start
          children: [
            // Displaying section header with hero animation
            Padding(
              padding: EdgeInsets.only(
                left: 30.w,
                right: 20.w,
              ),
              child: Hero(
                tag: section.templateProperties!.header!.identifier!,
                child: Material(
                  color: Colors.transparent,
                  child: GreyMediumText(
                    text: section
                        .templateProperties!.header!.title!, // Section title
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            Gap(15.h), // Space below header

            // Nested ListView to display items in the section
            ListView.builder(
              physics:
                  const NeverScrollableScrollPhysics(), // No scroll for nested list
              shrinkWrap: true, // Take only required space
              itemCount: section.templateProperties!.items!
                  .length, // Number of items in the section
              itemBuilder: (context, index) {
                final itemDisplayData = section.templateProperties!
                    .items![index].displayData!; // Get item data

                // Display each item using CategoryItem widget
                return CategoryItem(
                  itemDisplayData: itemDisplayData, // Pass item data
                  isGridView: false, // List view mode, not grid
                  animation: _animation, // Apply fade-in animation to items
                );
              },
            ),
          ],
        );
      },
    );

    // Building main UI of the page
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // Scrollable page content
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align children to the start
            children: [
              Gap(60.h), // Space at the top
              // Displaying the header title and subtitle
              Padding(
                padding: EdgeInsets.only(
                  left: 30.w,
                  right: 20.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GreyMediumText(
                      text: header.title!, // Main title from header
                    ),
                    TitleAndViewRow(
                      text: header.subtitleTitle!, // Subtitle from header
                    ),
                  ],
                ),
              ),
              Gap(30.h), // Space before the list view
              listView, // Render the list of sections and items
            ],
          ),
        ),
      ),
    );
  }
}


class TickBox extends StatefulWidget {
  final bool isTicked;
  const TickBox({
    super.key,
    required this.isTicked,
  });

  @override
  State<TickBox> createState() => _TickBoxState();
}

class _TickBoxState extends State<TickBox> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class TickStateless extends StatelessWidget {
  final bool isTicked;
  const TickStateless({
    super.key,
    required this.isTicked,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}