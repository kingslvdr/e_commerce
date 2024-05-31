import 'package:e_commerce/common/widgets/section_heading.dart';
import 'package:e_commerce/common/widgets/vertical_categories.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/size.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: ConstSizes.defaultSpace),
      child: Column(
        children: [
          const SectionHeading(
            text: 'Popular Categories',
            buttonTitle: 'View all',
            showActionButton: false,
            textColor: Colors.white,
          ),
          const SizedBox(
            height: ConstSizes.spaceBtwItems,
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return VerticalCategories(
                  image: TImages.shoeIcon,
                  title: 'Shoes',
                  textColor: ConstColors.white,
                  backgroundColor: ConstColors.white,
                  onTap: (){},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}