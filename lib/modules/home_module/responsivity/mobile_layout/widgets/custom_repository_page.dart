import 'package:flutter/material.dart';

import 'package:landing_page/modules/home_module/widgets/custom_image_widget.dart';
import 'package:landing_page/modules/home_module/widgets/custom_information_reposiotry_widget.dart';
import 'package:landing_page/modules/home_module/widgets/custom_tools_repository_widget.dart';

class CustomRepositoryPage extends StatefulWidget {
  const CustomRepositoryPage({
    Key? key,
    required this.name,
    required this.sobre,
    required this.images,
    required this.texts,
  }) : super(key: key);

  final String name;
  final String sobre;
  final List<String> images;
  final List<Text> texts;

  @override
  State<CustomRepositoryPage> createState() => _CustomRepositoryPageState();
}

class _CustomRepositoryPageState extends State<CustomRepositoryPage> {
  final controller = PageController(initialPage: 1, viewportFraction: 0.5);

  final valueNotifier = ValueNotifier(1.0);

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      valueNotifier.value = controller.page ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
              vertical: size.height * 0.02,
            ),
            child: CustomInformationReposiotryWidget(
              height: size.height * 0.16,
              name: widget.name,
              sobre: widget.sobre,
            ),
          ),
          SizedBox(
            height: size.height * 0.4,
            child: PageView.builder(
              controller: controller,
              itemCount: widget.images.length,
              itemBuilder: (context, index) {
                return ValueListenableBuilder<double>(
                  valueListenable: valueNotifier,
                  builder: (context, value, child) {
                    final selectedIndex = value.round();
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      transform: selectedIndex != index
                          ? (Matrix4.identity()
                            ..translate(
                              0.025 * size.width,
                              0.025 * size.height,
                            )
                            ..scale(0.85, 0.85))
                          : Matrix4.identity(),
                      child: child,
                    );
                  },
                  child: CustomImageWidget(
                    name: widget.images[index],
                    height: size.height,
                    width: size.width,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
              vertical: size.height * 0.02,
            ),
            child: CustomToolsRepositoryWidget(
              height: size.height * 0.2,
              texts: widget.texts,
            ),
          ),
        ],
      ),
    );
  }
}
