import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/common/widgets/circular_container.dart';
import 'package:e_commerce/common/widgets/rounded_image.dart';
import 'package:e_commerce/home_controller.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarouselPromoSlider extends StatelessWidget {
  const CarouselPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => RoundedImage(imgUrl: url, applyImageRadius: true, isNetworkImage: false)).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        const SizedBox(
          height: ConstSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  CircularContainer(
                    width: 20,
                    height: 4,
                    backgroundColor: controller.carouselCurrentIndex.value == i ? ConstColors.primary : ConstColors.grey,
                    margin: const EdgeInsets.only(right: 10),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}