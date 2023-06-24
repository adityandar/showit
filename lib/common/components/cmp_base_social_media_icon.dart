import 'package:flutter/material.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

class CmpBaseSocialMediaIcon extends StatelessWidget {
  const CmpBaseSocialMediaIcon({
    super.key,
    required this.type,
    required this.url,
  });

  final SocialMediaType type;
  final String url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO(adityandar): open url
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8).w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: BrColor.neutralGrey05,
        ),
        child: SvgPicture.asset(
          type.iconPath,
          width: 24.w,
        ),
      ),
    );
  }
}
