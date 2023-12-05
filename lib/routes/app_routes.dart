import 'package:flutter/material.dart';
import 'package:castillejos_famania_s_application2/presentation/init_page_screen/init_page_screen.dart';
import 'package:castillejos_famania_s_application2/presentation/product_description_screen/product_description_screen.dart';
import 'package:castillejos_famania_s_application2/presentation/category_view_screen/category_view_screen.dart';
import 'package:castillejos_famania_s_application2/presentation/categories_list_screen/categories_list_screen.dart';
import 'package:castillejos_famania_s_application2/presentation/profile_data_screen/profile_data_screen.dart';
import 'package:castillejos_famania_s_application2/presentation/payment_screen/payment_screen.dart';
import 'package:castillejos_famania_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String initPageScreen = '/init_page_screen';

  static const String productDescriptionScreen = '/product_description_screen';

  static const String categoryViewScreen = '/category_view_screen';

  static const String signInPage = '/sign_in_page';

  static const String logInPage = '/log_in_page';

  static const String homePage = '/home_page';

  static const String categoriesListScreen = '/categories_list_screen';

  static const String profileOptionsPage = '/profile_options_page';

  static const String profileDataScreen = '/profile_data_screen';

  static const String faovirteListPage = '/faovirte_list_page';

  static const String paymentScreen = '/payment_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        initPageScreen: InitPageScreen.builder,
        productDescriptionScreen: ProductDescriptionScreen.builder,
        categoryViewScreen: CategoryViewScreen.builder,
        categoriesListScreen: CategoriesListScreen.builder,
        profileDataScreen: ProfileDataScreen.builder,
        paymentScreen: PaymentScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: InitPageScreen.builder
      };
}
