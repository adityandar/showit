import 'package:flutter/material.dart';
import 'package:showit/assets/assets.dart';
import 'package:showit/common/common.dart';
import 'package:showit/dependencies/dependencies.dart';

class ExploreSearchAndFilterView extends StatelessWidget {
  const ExploreSearchAndFilterView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ).w,
              decoration: BoxDecoration(
                color: BrColor.neutralWhite,
                boxShadow: BrShadow.blue,
                borderRadius: BorderRadius.circular(60.r),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Assets.svgs.icSearch.path,
                    width: 20.w,
                    colorFilter: const ColorFilter.mode(
                      BrColor.neutralBlack05,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        border: InputBorder.none,
                        hintText: BrText.searchProject,
                        hintStyle: BrTypo.bodySmallRegular(
                          color: BrColor.neutralBlack05,
                        ),
                      ),
                      style: BrTypo.bodySmallRegular(
                        color: BrColor.neutralBlack02,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 8.w),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8).w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: BrColor.neutralWhite,
            ),
            child: SvgPicture.asset(
              Assets.svgs.icFilter.path,
              colorFilter: const ColorFilter.mode(
                BrColor.primaryDarkBlue02,
                BlendMode.srcIn,
              ),
              width: 24.w,
            ),
          ),
        ],
      ),
    );
  }
}
