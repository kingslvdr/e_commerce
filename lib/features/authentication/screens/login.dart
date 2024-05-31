
import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/bottom_nav.dart';
import 'package:e_commerce/features/authentication/screens/signup.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/size.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  ),
                  Text(
                    TTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: ConstSizes.sm,),
                  Text(
                    TTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: ConstSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: TTexts.email,
                        ),
                      ),
                      const SizedBox(height: ConstSizes.spaceBtwInputFields,),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: TTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash)
                        ),
                      ),
                      const SizedBox(height: ConstSizes.spaceBtwInputFields/2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: true, 
                                onChanged: (value){},
                              ),
                              const Text(TTexts.rememberMe),
                            ],
                          ),
                  
                          TextButton(
                            onPressed: (){}, 
                            child: const Text(TTexts.forgetPassword),
                          ),
                        ],
                      ),
                      const SizedBox(height: ConstSizes.spaceBtwSections,),
                  
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: (){
                            Get.to(const BottomNav());
                          }, 
                          child: const Text(TTexts.signIn),
                        ),
                      ),
                      const SizedBox(height: ConstSizes.spaceBtwItems,),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: (){
                            Get.to( const SignUpScreen());
                          }, 
                          child: const Text(TTexts.createAccount),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? ConstColors.darkGrey : ConstColors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(TTexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium,),
                  Flexible(
                    child: Divider(
                      color: dark ? ConstColors.darkGrey : ConstColors.grey,
                      thickness: 0.5,
                      indent: 6,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: ConstSizes.spaceBtwSections,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ConstColors.grey,
                      ),
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        width: ConstSizes.iconMd,
                        height: ConstSizes.iconMd,
                        image: AssetImage(TImages.google),
                      ),
                    ),
                  ),
                  const SizedBox(width: ConstSizes.spaceBtwItems,),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ConstColors.grey,
                      ),
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        width: ConstSizes.iconMd,
                        height: ConstSizes.iconMd,
                        image: AssetImage(TImages.facebook),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}