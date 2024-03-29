import 'package:flutter/material.dart';
import 'package:showit/assets/assets.dart';
import 'package:showit/dependencies/dependencies.dart';
import 'package:showit/settings/auto_route/app_router.dart';

import '../../../common/common.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(context) {
    return AutoTabsScaffold(
      routes: const [
        ExploreRoute(),
        MyProjectRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        final activeTabIndex = tabsRouter.activeIndex;

        return Container(
          padding: EdgeInsets.fromLTRB(
            8.w,
            12.w,
            8.w,
            24.w,
          ),
          decoration: BoxDecoration(
            color: BrColor.neutralWhite,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, -15),
                blurRadius: 15,
                color: BrColor.primaryDarkBlue01.withOpacity(0.08),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CmpNavbarItem(
                iconPath: Assets.svgs.icExplore.keyName,
                label: BrText.explore,
                index: 0,
                activeTabIndex: activeTabIndex,
                onTap: tabsRouter.setActiveIndex,
              ),
              CmpNavbarItem(
                iconPath: Assets.svgs.icCase.keyName,
                label: BrText.myProject,
                index: 1,
                activeTabIndex: activeTabIndex,
                onTap: tabsRouter.setActiveIndex,
              ),
              CmpNavbarItem(
                iconPath: Assets.svgs.icProfile.keyName,
                label: BrText.profile,
                index: 2,
                activeTabIndex: activeTabIndex,
                onTap: tabsRouter.setActiveIndex,
              ),
            ],
          ),
        );
      },
    );
  }
}
