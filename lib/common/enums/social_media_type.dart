import 'package:showit/assets/assets.dart';

enum SocialMediaType {
  instagram,
  linkedin,
  twitter,
  facebook,
}

extension SocialMediaTypeExtension on SocialMediaType {
  String get iconPath {
    switch (this) {
      case SocialMediaType.instagram:
        return Assets.svgs.socialMedia.icInstagram.path;
      case SocialMediaType.linkedin:
        return Assets.svgs.socialMedia.icLinkedin.path;
      case SocialMediaType.twitter:
        return Assets.svgs.socialMedia.icTwitter.path;
      case SocialMediaType.facebook:
        return Assets.svgs.socialMedia.icFacebook.path;
    }
  }
}
