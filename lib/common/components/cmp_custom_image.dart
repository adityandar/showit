import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class CmpCustomImage extends StatelessWidget {
  const CmpCustomImage({
    super.key,
    required this.url,
    required this.width,
    this.height,
    this.customBoxDecoration,
    this.isCircle = false,
  });

  final String url;
  final double width;
  final double? height;
  final bool isCircle;
  final BoxDecoration? customBoxDecoration;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height ?? width,
        decoration: (customBoxDecoration ?? const BoxDecoration()).copyWith(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
          shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
        ),
      ),
      progressIndicatorBuilder: (context, url, progress) => Shimmer(
        child: Container(
          width: width,
          height: height ?? width,
          decoration: (customBoxDecoration ?? const BoxDecoration()).copyWith(
            shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
          ),
        ),
      ),
      errorWidget: (context, url, error) => ClipRRect(
        child: Placeholder(
          fallbackWidth: width,
          fallbackHeight: height ?? width,
        ),
      ),
    );
  }
}
