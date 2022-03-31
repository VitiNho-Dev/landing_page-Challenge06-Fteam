import 'package:flutter/material.dart';
import 'package:landing_page/modules/home_module/responsivity/web_layout/apps_information/app_information.dart';
import 'package:landing_page/modules/home_module/widgets/custom_app_bar_widget.dart';
import 'package:landing_page/modules/home_module/responsivity/web_layout/widgets/custom_card_repository_widget.dart';
import 'package:landing_page/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class WebLayout extends StatefulWidget {
  const WebLayout({Key? key}) : super(key: key);

  @override
  State<WebLayout> createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextStyle? textStyle = Theme.of(context).textTheme.bodyText1;
    final information = appInformation;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBarWidget(
        heightSize: size.height * 0.2,
        height: size.height * 0.06,
        width: size.width * 0.06,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 100,
        ),
        shrinkWrap: true,
        itemCount: information.length,
        itemBuilder: (context, index) {
          final values = information[index];
          return Column(
            children: [
              const SizedBox(height: 32),
              CustomCardRepositoryWidget(
                size: size,
                name: values['name'].toString(),
                sobre: values['sobre'].toString(),
                image1: values['image1'].toString(),
                image2: values['image2'].toString(),
                image3: values['image3'].toString(),
                onPressed: () async {
                  if (await canLaunch(values['onPressed'].toString())) {
                    await launch(values['onPressed'].toString());
                  } else {
                    throw 'Could not launch Maps';
                  }
                },
                items: ListView.builder(
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
              ),
              const SizedBox(height: 32),
              Divider(
                color: AppColors.textColor.withOpacity(0.5),
              ),
            ],
          );
        },
      ),
    );
  }
}
