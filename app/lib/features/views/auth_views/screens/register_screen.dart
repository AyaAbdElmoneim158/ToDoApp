import 'package:flutter/material.dart';
import '/core/utils/app_strings.dart';
import '/core/utils/asset_manager.dart';
import '/core/utils/consts.dart';
import '/core/utils/helper.dart';
import '/features/views/auth_views/widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppConst.globalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Helper.hSizeBox(AppConst.globalSizeBox * 4),
                Helper.showHeader(header: AppStrings.signUp),
                Helper.showHeaderDescription(
                    headerDescription: AppStrings.enterInfo),
                Helper.hSizeBox(AppConst.globalSizeBox * 3),
                Image.asset(
                  ImageAssets.shoppingImage,
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Helper.hSizeBox(AppConst.globalSizeBox * 2),
                const RegisterForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
