import 'package:flutter/material.dart';
import 'package:showit/assets/assets.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';
import 'package:showit/utils/index.dart';

import '../../cubits/register_cubit.dart';

class DetailInfoFormView extends StatelessWidget {
  const DetailInfoFormView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) =>
          previous.personalInfoForm != current.personalInfoForm,
      builder: (context, state) {
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16).w,
          child: Column(
            children: [
              const SizedBox(height: kToolbarHeight),
              Text(
                BrText.detailInfo,
                style: BrTypo.headingH1Bold(),
              ),
              SizedBox(height: 32.w),
              CmpTextField(
                label: BrText.publicEmail,
                hintText: BrText.publicEmailHintText,
                iconPath: Assets.svgs.icProfile.path,
                onChanged: context.read<RegisterCubit>().onPublicEmailChanged,
                errorText:
                    state.personalInfoForm.publicEmail.displayError?.text(),
              ),
              SizedBox(height: 12.w),
              CmpTextField(
                label: BrText.instagram,
                hintText: BrText.instagramHintText,
                iconPath: Assets.svgs.socialMedia.icInstagram.path,
                onChanged: context.read<RegisterCubit>().onInstagramChanged,
              ),
              SizedBox(height: 12.w),
              CmpTextField(
                label: BrText.linkedin,
                hintText: BrText.linkedinHintText,
                iconPath: Assets.svgs.socialMedia.icLinkedin.path,
                onChanged: context.read<RegisterCubit>().onLinkedinChanged,
              ),
              SizedBox(height: 12.w),
              CmpTextField(
                label: BrText.twitter,
                hintText: BrText.twitterHintText,
                iconPath: Assets.svgs.socialMedia.icTwitter.path,
                onChanged: context.read<RegisterCubit>().onTwitterChanged,
              ),
              SizedBox(height: 12.w),
              CmpTextField(
                label: BrText.facebook,
                hintText: BrText.facebookHintText,
                iconPath: Assets.svgs.socialMedia.icFacebook.path,
                onChanged: context.read<RegisterCubit>().onFacebookChanged,
              ),
              SizedBox(height: 12.w),
            ],
          ),
        );
      },
    );
  }
}
