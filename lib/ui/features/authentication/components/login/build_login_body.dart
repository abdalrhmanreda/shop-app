import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:shoes/config/routes/routes_path.dart';
import 'package:shoes/core/components/custom_navigatation.dart';
import 'package:shoes/core/components/progress_indector.dart';
import 'package:shoes/ui/features/authentication/controller/auth_cubit.dart';

import '../../../../../../generated/l10n.dart';
import '../../../../../config/colors/app_colors.dart';
import '../../../../../core/components/custom_button.dart';
import '../../../../../core/components/flutter_toast.dart';
import '../../../../../core/constant/app_constant.dart';
import '../common/build_rich_text.dart';
import '../common/build_text_next_to_text_button.dart';
import '../common/build_two_text_form_field.dart';

class BuildLoginScreenBody extends StatelessWidget {
  const BuildLoginScreenBody({
    super.key,
    required this.emailController,
    required this.passController,
    required this.formKey,
  });

  final TextEditingController emailController;
  final TextEditingController passController;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is LoginSuccessState) {
          showToast(message: 'Login Successfully', state: ToastState.SUCCESS);
        } else if (state is FailureState) {
          showToast(message: state.error, state: ToastState.SUCCESS);
        }
      },
      builder: (context, state) {
        return Center(
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
                    ConditionalBuilder(
                        condition: state is! LoadingState,
                        builder: (context) => CustomButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  AuthCubit.get(context).userLogin(
                                      email: emailController.text,
                                      password: passController.text);
                                }
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
                        fallback: (context) => const CustomLoadingIndicator()),
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
        );
      },
    );
  }
}
