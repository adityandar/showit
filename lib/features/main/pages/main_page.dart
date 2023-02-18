import 'package:flutter/material.dart';
import 'package:showit/assets/assets.dart';
import 'package:showit/dependencies/dependencies.dart';
import 'package:showit/settings/auto_route/app_router.dart';

import '../../../common/common.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(context) {
    return AutoTabsScaffold(
      routes: const [
        ExploreRoute(),
        SearchRoute(),
        MyProjectRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        final activeTabIndex = tabsRouter.activeIndex;

        return Container(
          padding: EdgeInsets.fromLTRB(
            16.w,
            16.w,
            16.w,
            24.w,
          ),
          decoration: BoxDecoration(
            color: BrColor.neutralWhite,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -25),
                blurRadius: 15,
                color: BrColor.primaryDarkBlue01.withOpacity(0.08),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomNavbarItem(
                iconPath: Assets.svgs.icExplore.keyName,
                label: BrText.explore,
                index: 0,
                activeTabIndex: activeTabIndex,
                onTap: tabsRouter.setActiveIndex,
              ),
              CustomNavbarItem(
                iconPath: Assets.svgs.icSearch.keyName,
                label: BrText.search,
                index: 1,
                activeTabIndex: activeTabIndex,
                onTap: tabsRouter.setActiveIndex,
              ),
              CustomNavbarItem(
                iconPath: Assets.svgs.icCase.keyName,
                label: BrText.myProject,
                index: 2,
                activeTabIndex: activeTabIndex,
                onTap: tabsRouter.setActiveIndex,
              ),
              CustomNavbarItem(
                iconPath: Assets.svgs.icProfile.keyName,
                label: BrText.profile,
                index: 3,
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
