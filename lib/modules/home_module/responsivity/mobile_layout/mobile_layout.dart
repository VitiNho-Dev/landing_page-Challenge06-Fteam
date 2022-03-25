import 'package:flutter/material.dart';
import 'package:landing_page/modules/home_module/responsivity/mobile_layout/widgets/custom_repository_page.dart';
import 'package:landing_page/modules/home_module/widgets/custom_app_bar_widget.dart';
import 'package:landing_page/theme/app_colors.dart';
import 'package:landing_page/utils/url.dart';
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

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: CustomAppBarWidget(
          heightSize: size.height * 0.12,
          height: size.height * 0.06,
          width: size.width * 0.06,
        ),
        body: PageView(
          scrollDirection: Axis.vertical,
          controller: pageController,
          children: [
            CustomRepositoryPage(
              onPressed: () async {
                await launch(masterclassAppUrl);
              },
              name: 'App Masterclass',
              sobre: 'Um app feito durante a Masterclass de Flutter iniciante.',
              images: const [
                'assets/images/Screenshot_20220324-154709.jpg',
                'assets/images/Screenshot_20220324-154730.jpg',
                'assets/images/Screenshot_20220324-154758.jpg',
              ],
              texts: [
                Text(
                  'Dart',
                  style: textStyle,
                ),
                Text(
                  'Flutter',
                  style: textStyle,
                ),
                Text(
                  'ChangeNotifier',
                  style: textStyle,
                ),
                Text(
                  'ValueNotifier',
                  style: textStyle,
                ),
                Text(
                  'Dio',
                  style: textStyle,
                ),
              ],
            ),
            CustomRepositoryPage(
              onPressed: () async {
                await launch(movieAppUrl);
              },
              name: 'Movie App',
              sobre: 'Quinto desafio da Fteam feito com Triple, Modular e Uno.',
              images: const [
                'assets/images/Screenshot_20220324-110907.jpg',
                'assets/images/Screenshot_20220324-110957.jpg',
                'assets/images/Screenshot_20220324-110937.jpg',
              ],
              texts: [
                Text(
                  'Dart',
                  style: textStyle,
                ),
                Text(
                  'Flutter',
                  style: textStyle,
                ),
                Text(
                  'Modular',
                  style: textStyle,
                ),
                Text(
                  'Triple',
                  style: textStyle,
                ),
                Text(
                  'Uno',
                  style: textStyle,
                ),
              ],
            ),
            CustomRepositoryPage(
              onPressed: () async {
                await launch(qlorianAppUrl);
              },
              name: 'App Qlorian',
              sobre:
                  'Segundo desafio da Fteam concluído, utilizando Mascaras com Regex.',
              images: const [
                'assets/images/Screenshot_20220324-151919.jpg',
                'assets/images/Screenshot_20220324-152242.jpg',
                'assets/images/Screenshot_20220324-152107.jpg',
              ],
              texts: [
                Text(
                  'Dart',
                  style: textStyle,
                ),
                Text(
                  'Flutter',
                  style: textStyle,
                ),
                Text(
                  'Regex',
                  style: textStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
