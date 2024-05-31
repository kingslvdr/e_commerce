import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/common/widgets/carousel_promo_slider.dart';
import 'package:e_commerce/common/widgets/circular_container.dart';
import 'package:e_commerce/common/widgets/header_container.dart';
import 'package:e_commerce/common/widgets/home_appbar.dart';
import 'package:e_commerce/common/widgets/home_categories.dart';
import 'package:e_commerce/common/widgets/rounded_image.dart';
import 'package:e_commerce/common/widgets/search_container.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';

import 'package:e_commerce/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(
              child: Column(
                children: [
                  const HomeAppBar(),
                  const SizedBox(
                    height: ConstSizes.spaceBtwSections,
                  ),
                  SearchContainer(
                    text: 'Seach in Store',
                    showBackGround: true,
                    showBorder: true,
                    icon: Iconsax.search_normal,
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: ConstSizes.spaceBtwSections,
                  ),
                  const HomeCategories(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(ConstSizes.defaultSpace),
              child: CarouselPromoSlider(banners: [TImages.banner1, TImages.banner2, TImages.banner2]),
            ),
          ],
        ),
      ),
    );
  }
}


