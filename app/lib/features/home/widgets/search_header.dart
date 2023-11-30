import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:todo_app/core/router/routes.dart';
import 'package:todo_app/core/shareable_components/common_circle_avatar.dart';
import 'package:todo_app/core/shareable_components/common_field.dart';
import 'package:todo_app/core/utils/app_colors.dart';
import 'package:todo_app/core/utils/app_strings.dart';
import 'package:todo_app/core/utils/consts.dart';
import 'package:todo_app/core/utils/helper.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: CommonField(
            vertical: 3,
            hintText: AppStrings.searchProduct,
            prefixIcon: Icon(
              Icons.search,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        Helper.wSizeBox(AppConst.globalSizeBox),
        CommonCircleAvatar(
          onTap: () => Navigator.pushNamed(context, Routes.cartRoute),
          // radius: 32,
          avatar: const Icon(
            Icons.shopping_cart_outlined,
            color: AppColors.primaryColor,
          ),
        ),
        Helper.wSizeBox(AppConst.globalSizeBox),
        CommonCircleAvatar(
          onTap: () => Navigator.pushNamed(context, Routes.notificationRoute),
          // radius: 32,
          avatar: const Icon(
            IconlyBroken.notification,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
