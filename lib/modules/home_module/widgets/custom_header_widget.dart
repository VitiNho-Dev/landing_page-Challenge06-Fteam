import 'package:flutter/material.dart';
import 'package:landing_page/modules/home_module/widgets/custom_text_button_widget.dart';
import 'package:landing_page/utils/url.dart';

class CustomHeaderWidget extends StatelessWidget {
  const CustomHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(profileImageUrl),
          radius: 50,
        ),
        const SizedBox(width: 34),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Victor Henrique de Oliveira',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 8),
            Text(
              'Flutter Developer',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                CustomTextButtonWidget(
                  url: linkedinUrl,
                  iconAsset: 'assets/icons/linkedin.png',
                ),
                CustomTextButtonWidget(
                  url: githubUrl,
                  iconAsset: 'assets/icons/github.png',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
