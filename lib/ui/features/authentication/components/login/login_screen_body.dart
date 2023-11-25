import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:shoes/config/routes/routes_path.dart';
import 'package:shoes/core/components/custom_navigatation.dart';

import '../../../../../../generated/l10n.dart';
import '../../../../../config/colors/app_colors.dart';
import '../../../../../core/components/custom_button.dart';
import '../../../../../core/constant/app_constant.dart';
import '../common/build_rich_text.dart';
import '../common/build_text_next_to_text_button.dart';
import '../common/build_two_text_form_field.dart';

class LoginScreenBody extends StatelessWidget {
  LoginScreenBody({super.key});
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passController = TextEditingController();
    return SingleChildScrollView(
      child: Center(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              height: AppConstant.deviceHeight(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customRichText(
                    context: context,
                    textPartOne: S.of(context).loginScreenTitlePartOne,
                    textPartTwo: S.of(context).loginScreenTitlePartTwo,
                  ),
                  Text(
                    S.of(context).loginScreenDescription,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const Gap(30),
                  CustomTwoTextFromField(
                    controller1: emailController,
                    controller2: passController,
                    label1: S.of(context).loginScreenEmail,
                    label2: S.of(context).loginScreenPass,
                    isPass: false,
                    isPass2: true,
                    prefixIcon1: IconlyBroken.message,
                    prefixIcon2: IconlyBroken.lock,
                  ),
                  const Gap(10),
                  customTextNextToTextButton(
                    context: context,
                    textButton: S.of(context).loginScreenForgetPass,
                  ),
                  CustomButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    text: S.of(context).loginScreenButton,
                    height: 37.h,
                    color: AppColors.kPrimaryColor,
                    width: AppConstant.deviceWidth(context),
                    horizontal: 0,
                    vertical: 0,
                    radius: 10,
                    textColor: AppColors.kWhiteColor,
                    fontSize: 22,
                  ),
                  const Gap(10),
                  customTextNextToTextButton(
                    context: context,
                    text: S.of(context).loginScreenHaveNotAccount,
                    textButton: S.of(context).loginScreenCreateAccount,
                    onPressed: () {
                      CustomNavigation.navigateByNamedTo(
                          context, RoutePath.register);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
