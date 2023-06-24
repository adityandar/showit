import 'package:flutter/material.dart';
import 'package:showit/assets/assets.dart';
import 'package:showit/common/common.dart';

import '../../../dependencies/dependencies.dart';
import 'views/index.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BrColor.neutralWhite,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: kToolbarHeight + 5.w),
            CmpCustomImage(
              url:
                  'https://randomwordgenerator.com/img/picture-generator/53e3d1454855ae14f1dc8460962e33791c3ad6e04e507440702d79d39f4dc3_640.jpg',
              width: 64.w,
              isCircle: true,
            ),
            SizedBox(height: 24.w),
            Text(
              'Aditya Andar Rahim',
              style: BrTypo.headingH2Bold(),
            ),
            SizedBox(height: 4.w),
            RatingBarIndicator(
              rating: 2.75,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: BrColor.primaryDarkBlue02,
              ),
              itemCount: 5,
              itemSize: 16.w,
            ),
            SizedBox(height: 24.w),
            Row(
              children: [
                const ProfileInfoWidget(
                  title: BrText.projectShowed,
                  amount: 100,
                ),
                SizedBox(width: 24.w),
                const ProfileInfoWidget(
                  title: BrText.likesReceived,
                  amount: 370,
                ),
              ],
            ),
            CmpDivider(
              margin: const EdgeInsets.only(top: 24, bottom: 8).w,
            ),
            ProfileActionItemWidget(
              svgPath: Assets.svgs.icEditProfile.path,
              title: BrText.editProfile,
              onTap: () {},
            ),
            CmpDivider(
              margin: const EdgeInsets.symmetric(vertical: 8).w,
            ),
            ProfileActionItemWidget(
              svgPath: Assets.svgs.icMail.path,
              title: BrText.contactDeveloper,
              onTap: () {},
            ),
            CmpDivider(
              margin: const EdgeInsets.symmetric(vertical: 8).w,
            ),
            ProfileActionItemWidget(
              svgPath: Assets.svgs.icSignOut.path,
              title: BrText.signOut,
              onTap: () {},
            ),
            CmpDivider(
              margin: const EdgeInsets.symmetric(vertical: 8).w,
            ),
          ],
        ),
      ),
    );
  }
}
