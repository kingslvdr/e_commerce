import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/size.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key, required this.text, required this.icon, required this.showBackGround, required this.showBorder, this.onTap,

  });
  final String text;
  final IconData icon;
  final bool showBackGround, showBorder;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: ConstSizes.defaultSpace),
        child: Container(
          width: DeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(ConstSizes.md),
          decoration: BoxDecoration(
            color: showBackGround
                ? dark
                    ? ConstColors.dark
                    : ConstColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(ConstSizes.cardRadiusLg),
            border: showBorder
                ? Border.all(
                    color: ConstColors.grey,
                  )
                : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: ConstColors.darkerGrey,
              ),
              const SizedBox(
                width: ConstSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}