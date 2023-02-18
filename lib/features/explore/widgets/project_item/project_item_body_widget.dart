import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:showit/common/common.dart';

class ProjectItemBodyWidget extends StatelessWidget {
  const ProjectItemBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.w),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ProjectItemScreenshotWidget(
              url: 'https://pbs.twimg.com/media/CnI5seUUsAE0FR8.jpg',
            ),
            ProjectItemScreenshotWidget(
              url: 'https://pbs.twimg.com/media/CnI5seUUsAE0FR8.jpg',
            ),
            ProjectItemScreenshotWidget(
              url: 'https://pbs.twimg.com/media/CnI5seUUsAE0FR8.jpg',
            ),
            ProjectItemScreenshotWidget(
              url: 'https://pbs.twimg.com/media/CnI5seUUsAE0FR8.jpg',
            ),
            ProjectItemScreenshotWidget(
              url: 'https://pbs.twimg.com/media/CnI5seUUsAE0FR8.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectItemScreenshotWidget extends StatelessWidget {
  const ProjectItemScreenshotWidget({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.w),
      child: CachedNetworkImage(
        imageUrl: url,
        imageBuilder: (context, imageProvider) => Container(
          width: 99.w,
          height: 176.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        progressIndicatorBuilder: (context, url, progress) => Shimmer(
          child: Container(
            width: 99.w,
            height: 176.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: BrColor.neutralBlack05,
            ),
          ),
        ),
      ),
    );
  }
}
