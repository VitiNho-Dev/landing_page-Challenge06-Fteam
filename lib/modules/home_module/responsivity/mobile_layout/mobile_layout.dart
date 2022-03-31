import 'package:flutter/material.dart';
import 'package:landing_page/modules/home_module/responsivity/mobile_layout/widgets/custom_repository_page.dart';
import 'package:landing_page/modules/home_module/responsivity/web_layout/apps_information/app_information.dart';
import 'package:landing_page/modules/home_module/widgets/custom_app_bar_widget.dart';
import 'package:landing_page/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextStyle? textStyle = Theme.of(context).textTheme.bodyText1;
    final information = appInformation;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: CustomAppBarWidget(
          heightSize: size.height * 0.12,
          height: size.height * 0.06,
          width: size.width * 0.06,
        ),
        body: PageView.builder(
          scrollDirection: Axis.vertical,
          controller: pageController,
          itemCount: information.length,
          itemBuilder: (context, index) {
            final values = information[index];
            return CustomRepositoryPage(
              name: values['name'].toString(),
              sobre: values['sobre'].toString(),
              images: [
                values['image1'].toString(),
                values['image2'].toString(),
                values['image3'].toString(),
              ],
              onPressed: () async {
                await launch(values['onPressed'].toString());
              },
              texts: ListView.builder(
                itemCount: (values['text'] as List).length,
                shrinkWrap: true,
                itemBuilder: (context, count) {
                  var text = values['text'] as List;
                  var value = text[count].toString();
                  return Text(
                    value,
                    style: textStyle,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
