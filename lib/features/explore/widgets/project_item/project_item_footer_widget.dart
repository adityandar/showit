import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:showit/common/common.dart';

class ProjectItemFooterWidget extends StatelessWidget {
  const ProjectItemFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.w),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  BrText.projectBy,
                  style: BrTypo.captionRegular(color: BrColor.neutralGrey01),
                ),
                SizedBox(height: 4.w),
                Row(
                  children: [
                    CmpCustomImage(
                      url:
                          'https://this-person-does-not-exist.com/img/avatar-7ab31c4cebfab2ff79ac1b6002ac3bf1.jpg',
                      width: 32.w,
                      isCircle: true,
                    ),
                    SizedBox(width: 12.w),
                    Text(
                      'Roselle Ehrman',
                      style: BrTypo.bodyMedium(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 24.w),
          CmpClapSupportButton(
            isSupported: false,
          ),
        ],
      ),
    );
  }
}
