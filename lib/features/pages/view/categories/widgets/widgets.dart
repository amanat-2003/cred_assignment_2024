// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cred2024_amanat/core/global.dart';
import 'package:cred2024_amanat/features/pages/providers/display_data_provider.dart';
import 'package:cred2024_amanat/features/requestdata/model/request_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:cred2024_amanat/core/app_constants.dart';
import 'package:cred2024_amanat/features/pages/providers/is_list_view_provider.dart';
import 'package:cred2024_amanat/features/pages/view/categories/categories_list_page.dart';
import 'package:cred2024_amanat/features/pages/view/categories/category_grid_page.dart';

// Custom text widget with grey color and medium size
class GreyMediumText extends StatelessWidget {
  final String text;
  final double fontSize;
  final double? height;

  const GreyMediumText({
    super.key,
    required this.text,
    this.fontSize = 16,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.screen2GreyTextColor,
        fontSize: fontSize.h,
        height: height,
      ),
      maxLines: 2,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
    );
  }
}

// Widget to display a title with a row of view options
class TitleAndViewRow extends ConsumerWidget {
  final String text;

  const TitleAndViewRow({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Determine if the current view is a list view
    bool isListView = ref.read(isListViewProvider);
    return Row(
      children: [
        WhiteBigText(text: text),
        const Spacer(),
        GridOrListView(
          key: ValueKey(isListView),
          isListView: isListView,
        ),
        Gap(30.w),
        const DropDownButtonCategory(),
        Gap(20.w),
      ],
    );
  }
}

// Custom text widget with white color and big size
class WhiteBigText extends StatelessWidget {
  final String text;
  final double fontSize;
  final double? height;
  final TextAlign? textAlign;

  const WhiteBigText({
    super.key,
    required this.text,
    this.fontSize = 25,
    this.height,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.whiteColor,
        fontSize: fontSize.h,
        height: height,
      ),
      textAlign: textAlign,
      maxLines: 2,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
    );
  }
}

// Button widget for dropdown functionality
class DropDownButtonCategory extends StatelessWidget {
  const DropDownButtonCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop(); // Close the dropdown when tapped
      },
      child: Container(
        width: 20.h,
        height: 20.h,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: Colors.white,
            width: 1.2.h,
          ),
          borderRadius: BorderRadius.zero,
        ),
        child: Center(
          child: Icon(
            Icons.expand_more_rounded,
            color: AppColors.whiteColor,
            size: 18.h,
          ),
        ),
      ),
    );
  }
}

// Toggle button between grid and list views
class GridOrListView extends ConsumerWidget {
  final bool isListView;

  const GridOrListView({
    super.key,
    required this.isListView,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        // Toggle view and navigate to the appropriate page
        HapticFeedback.heavyImpact();
        if (isListView) {
          ref.read(isListViewProvider.notifier).toggle();
          Navigator.of(context)
              .pushReplacementNamed(CategoriesGridPage.routeName);
        } else {
          ref.read(isListViewProvider.notifier).toggle();
          Navigator.of(context)
              .pushReplacementNamed(CategoriesListPage.routeName);
        }
      },
      child: Container(
        width: 44.h,
        height: 22.h,
        padding: EdgeInsets.all(1.5.h),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: Colors.white,
            width: 1.2.h,
          ),
          borderRadius: BorderRadius.zero,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 18.h,
              height: 19.h,
              color: isListView ? null : Colors.white,
              child: isListView
                  ? null
                  : Center(
                      child: Icon(
                        Icons.grid_view_rounded,
                        color: Colors.black,
                        size: 12.h,
                      ),
                    ),
            ),
            Container(
              width: 18.h,
              height: 19.h,
              color: !isListView ? null : Colors.white,
              child: !isListView
                  ? null
                  : Center(
                      child: Icon(
                        Icons.menu_rounded,
                        color: Colors.black,
                        size: 15.h,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom widget for displaying cached images
class CachedImage extends StatelessWidget {
  final String iconUrl;
  final double dimension;

  const CachedImage({
    super.key,
    required this.iconUrl,
    required this.dimension,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      cacheManager: Global.customCacheManager,
      imageUrl: iconUrl,
      height: dimension,
      fit: BoxFit.cover,
      errorWidget: (context, url, error) => Icon(
        Icons.error,
        color: AppColors.redColor,
        size: dimension,
      ),
      placeholder: (context, url) {
        return SizedBox(
          width: dimension,
          height: dimension,
        );
      },
    );
  }
}

// Widget for displaying a category item
class CategoryItem extends ConsumerWidget {
  final DisplayData itemDisplayData;
  final bool isGridView;
  final Animation<double> animation;

  const CategoryItem({
    super.key,
    required this.itemDisplayData,
    required this.isGridView,
    required this.animation,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      splashColor: AppColors.splashColor,
      overlayColor: const WidgetStatePropertyAll(AppColors.splashColor),
      onTap: ()async {
        HapticFeedback.vibrate();
        // Set the display data and pop the current screen
        ref.read(displayDataNotifierProvider.notifier).addData(itemDisplayData);
        Navigator.of(context).pop();
      },
      child: Padding(
        padding: isGridView
            ? EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h)
            : EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
        child: isGridView ? _buildGridItem() : _buildListItem(),
      ),
    );
  }

  // Builds the grid item view
  Widget _buildGridItem() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildIconContainer(),
        Gap(10.h),
        SizedBox(
          width: 80.h,
          child: _buildTitle(),
        ),
      ],
    );
  }

  // Builds the list item view
  Widget _buildListItem() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildIconContainer(),
        Gap(15.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitle(),
              FadeTransition(
                opacity: animation,
                child: GreyMediumText(
                  text: itemDisplayData.description!,
                  fontSize: 12,
                  height: 1.1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Builds the container with an icon
  Widget _buildIconContainer() {
    return Hero(
      tag: ValueKey("Box ${itemDisplayData.hashCode}"),
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: 80.h,
          height: 80.h,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.categoryBorderColor,
              width: 1.1.h,
            ),
            borderRadius: BorderRadius.zero,
          ),
          child: Center(
            child: CachedImage(
              iconUrl: itemDisplayData.iconUrl!,
              dimension: 45.h,
            ),
          ),
        ),
      ),
    );
  }

  // Builds the title of the category item
  Widget _buildTitle() {
    return Hero(
      tag: ValueKey("Title ${itemDisplayData.hashCode}"),
      child: Material(
        color: Colors.transparent,
        child: FadeTransition(
          opacity: animation,
          child: WhiteBigText(
            text: itemDisplayData.name!,
            fontSize: isGridView ? 12 : 14,
            textAlign: isGridView ? TextAlign.center : TextAlign.start,
            height: 1.1,
          ),
        ),
      ),
    );
  }
}
