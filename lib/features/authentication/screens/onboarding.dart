import 'package:e_commerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/size.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoardingController());
  
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(image: TImages.onBoardingImage1, title: TTexts.onBoardingTitle1, subTitle: TTexts.onBoardingSubTitle1,),
              OnBoardingPage(image: TImages.onBoardingImage2, title: TTexts.onBoardingTitle2, subTitle: TTexts.onBoardingSubTitle2,),
              OnBoardingPage(image: TImages.onBoardingImage3, title: TTexts.onBoardingTitle3, subTitle: TTexts.onBoardingSubTitle3,),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNav(),
          const OnBoardingSkipButton(),
        ],
      ),
    );
  }
}

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      right: ConstSizes.defaultSpace,
      bottom: DeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: (){
          OnBoardingController.instance.nextPage();
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? ConstColors.primary : Colors.black
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}

class OnBoardingDotNav extends StatelessWidget {
  const OnBoardingDotNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: DeviceUtils.getBottomNavigationBarHeight() + 25,
      left: ConstSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? ConstColors.light : ConstColors.dark, 
          dotHeight: 6,
        ),
      ),
    );
  }
}

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: DeviceUtils.getAppBarHeight(),
      right: ConstSizes.defaultSpace,
      child: TextButton(
        onPressed: (){
          OnBoardingController.instance.skipPage();
        }, 
        child: const Text('Skip'), 
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  final String image, title, subTitle;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ConstSizes.defaultSpace),
      child: Column(
        children: [
         Image(
          width: THelperFunctions.screenWidth() * 0.8,
          height: THelperFunctions.screenHeight() * 0.6,
          image: AssetImage(image),
          ),
          Text(
            title, 
            style: Theme.of(context).textTheme.headlineMedium, 
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: ConstSizes.spaceBtwItems,),
          Text(
            subTitle, 
            style: Theme.of(context).textTheme.bodyMedium, 
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}