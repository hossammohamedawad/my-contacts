import 'package:flutter/material.dart';
import 'package:hossam_app/widgets/contacts_grid.dart';
import 'package:hossam_app/widgets/social_media_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class MyContacts extends StatelessWidget {
  MyContacts({super.key});
  Map<String, String> socialMedia = {
    'facebook.png': 'https://www.facebook.com/home.php',
    'whatsapp.png': 'https://wa.me/+201287589802',
    'youtube.png': 'https://www.youtube.com/',
    'githup.png': 'https://github.com/hossammohamedawad',
    'instagram.png': 'https://www.instagram.com/?hl=ar',
    'telegram.png': 'https://web.telegram.org/a/',
    'linkedin.png': 'https://www.linkedin.com/in/hossam-mohamed-3a052a217/',
    'twitter.png': 'https://x.com/hossama1996?t=_JZlhtnLQ_BvSbrEtM64ew&s=08',
    'tiktok.png': 'https://www.tiktok.com/@hossam_mohamed9635?_t=8fn5Ubd04PO&_r=1',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 7, 30),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 130,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/hossam.JPG'),
                radius: 130,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Hossam Mohamed',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '+201284589802',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.green,
                    ),
                    onPressed: () {
                      launchUrl(Uri.parse('tel:+201287589802'));
                    },
                  )
                ],
              ),
              SizedBox(
                height: 0,
              ),
              ContactsGrid(socialMedia: socialMedia)
            ],
          ),
        ),
      ),
    );
  }
}