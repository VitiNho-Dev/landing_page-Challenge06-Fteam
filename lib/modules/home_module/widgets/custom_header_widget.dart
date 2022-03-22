import 'package:flutter/material.dart';
import 'package:landing_page/utils/url.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomHeaderWidget extends StatelessWidget {
  const CustomHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(profileImageUrl),
          radius: 50,
        ),
        const SizedBox(height: 34),
        Text(
          'Victor Henrique de Oliveira',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 8),
        Text(
          'Flutter Developer',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () async {
            if (await canLaunch(
                'https://www.linkedin.com/in/victor-henrique-9b1375174/')) {
              await launch(
                  'https://www.linkedin.com/in/victor-henrique-9b1375174/');
            } else {
              throw 'Could not launch Maps';
            }
          },
          child: const Text('Linkedin'),
        ),
      ],
    );
  }
}
