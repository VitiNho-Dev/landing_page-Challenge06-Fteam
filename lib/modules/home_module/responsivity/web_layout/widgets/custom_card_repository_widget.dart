import 'package:flutter/material.dart';

import 'package:landing_page/modules/home_module/responsivity/web_layout/widgets/custom_view_images.dart';
import 'package:landing_page/modules/home_module/widgets/custom_information_reposiotry_widget.dart';
import 'package:landing_page/modules/home_module/widgets/custom_tools_repository_widget.dart';

class CustomCardRepositoryWidget extends StatelessWidget {
  const CustomCardRepositoryWidget({
    Key? key,
    required this.size,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.name,
    required this.sobre,
    this.onPressed,
    required this.items,
  }) : super(key: key);

  final Size size;
  final String image1;
  final String image2;
  final String image3;
  final String name;
  final String sobre;
  final void Function()? onPressed;
  final List<Text> items;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 2,
          child: CustomViewImagesWidget(
            size: size,
            image1: image1,
            image2: image2,
            image3: image3,
          ),
        ),
        Expanded(
          flex: 2,
          child: CustomInformationReposiotryWidget(
            name: name,
            sobre: sobre,
            onPressed: onPressed,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: CustomToolsRepositoryWidget(
            texts: items,
          ),
        ),
      ],
    );
  }
}
