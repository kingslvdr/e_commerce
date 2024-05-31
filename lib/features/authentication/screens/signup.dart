import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/size.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ConstSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: ConstSizes.spaceBtwSections,
              ),
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                                labelText: TTexts.firstName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                        const SizedBox(
                          width: ConstSizes.spaceBtwInputFields,
                        ),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                                labelText: TTexts.lastName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: ConstSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: TTexts.username,
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),
                    const SizedBox(
                      height: ConstSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: TTexts.email,
                        prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                    const SizedBox(
                      height: ConstSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: TTexts.phoneNo,
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    const SizedBox(
                      height: ConstSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: TTexts.password,
                          prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye_slash)),
                    ),
                    const SizedBox(
                      height: ConstSizes.spaceBtwSections,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(value: true, onChanged: (value) {}),
                        ),
                        const SizedBox(
                          width: ConstSizes.spaceBtwItems,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: '${TTexts.iAgreeTo} ',
                                  style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                text: '${TTexts.privacyPolicy} ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                        color: dark
                                            ? ConstColors.white
                                            : ConstColors.primary,
                                        decoration: TextDecoration.underline,
                                        decorationColor: dark
                                            ? ConstColors.white
                                            : ConstColors.primary),
                              ),
                              TextSpan(
                                  text: '${TTexts.and} ',
                                  style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                text: TTexts.termsOfUse,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                        color: dark
                                            ? ConstColors.white
                                            : ConstColors.primary,
                                        decoration: TextDecoration.underline,
                                        decorationColor: dark
                                            ? ConstColors.white
                                            : ConstColors.primary),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: ConstSizes.spaceBtwSections,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(TTexts.createAccount),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
