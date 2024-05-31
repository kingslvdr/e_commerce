import 'package:e_commerce/common/widgets/appbar.dart';
import 'package:e_commerce/common/widgets/cart_menu_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      showBackArrow: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Good Morning',
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: ConstColors.grey),
          ),
          Text(
            'King Salvador',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: ConstColors.white),
          ),
        ],
      ),
      actions: [
        CounterIcon(onPressed: (){}, iconColor: ConstColors.white,),
      ],
    );
  }
}