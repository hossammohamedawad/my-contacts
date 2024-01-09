
import 'package:flutter/material.dart';
import 'package:hossam_app/widgets/social_media_icon.dart';

class ContactsGrid extends StatelessWidget {
  const ContactsGrid({
    super.key,
    required this.socialMedia,
  });

  final Map<String, String> socialMedia;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: socialMedia.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3),
      itemBuilder: (context, index) {
        return SocialMediaIcon(
          socialMedia: socialMedia.keys.toList()[index],
          socialMediaLink: socialMedia.values.toList()[index],
        );
      },
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(40),
    );
  }
}
