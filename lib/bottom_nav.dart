import 'package:e_commerce/home_screen.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavController());
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80.0,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: dark ? ConstColors.black : ConstColors.white,
          indicatorColor: dark ? ConstColors.white.withOpacity(0.1) : ConstColors.black.withOpacity(0.1),
          destinations: const [
             NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
             NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
             NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
             NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens = [const Home(),Container(color: Colors.red ,),Container(color: Colors.blue,),Container(color: Colors.purple,)];
}