import 'package:flutter/material.dart';
import 'package:flutter_real_state_ui/theme/border.dart';

import '../theme/colors.dart';
import '../theme/text_styles.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: backGroundColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: backGroundColor,
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.03,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: getBorderRadiusWidget(context, 6),
                      child: Image.asset(
                        'person.jpg',
                        width: width * 0.12,
                        height: height * 0.07,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                const Text(
                  'Location',
                  style: textStyle6,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.location_on_rounded,
                      color: buttonColor1,
                    ),
                    Text(
                      'Allen Avenue, Lagos',
                      style: textStyle5,
                    ),
                  ],
                ),
                Container(
                  width: width,
                  height: height * 0.08,
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  margin: EdgeInsets.symmetric(
                    horizontal: width * 0.01,
                    vertical: height * 0.03,
                  ),
                  decoration: BoxDecoration(
                    color: darkColor,
                    borderRadius: getBorderRadiusWidget(context, 0.03),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: width * 0.08,
                      ),
                      SizedBox(width: width * 0.01),
                      const Text(
                        'Search apartment',
                        style: textStyle9,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.01),
                const Text(
                  'Recommend for you',
                  style: textStyle3,
                ),
                SizedBox(height: height * 0.02),
                SizedBox(
                  width: width,
                  height: height * 0.45,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      HousesWidget(
                        imageName: 'pic1.jpg',
                        title1: 'Blake Mansion',
                        title2: 'Allen Estate',
                      ),
                      HousesWidget(
                        imageName: 'pic2.png',
                        title1: 'Michael Smith',
                        title2: 'Royal Estate',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HousesWidget extends StatelessWidget {
  const HousesWidget({
    Key? key,
    required this.imageName,
    required this.title1,
    required this.title2,
  }) : super(key: key);

  final String imageName;
  final String title1;
  final String title2;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(right: width * 0.04),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: getBorderRadiusWidget(context, 0.04),
            child: Image.asset(
              imageName,
              width: width * 0.65,
              height: height * 0.45,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              alignment: Alignment.bottomCenter,
              width: width * 0.65,
              height: height * 0.12,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    backGroundColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.02,
                  vertical: height * 0.02,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title1,
                          style: textStyle2,
                        ),
                        Text(
                          title2,
                          style: textStyle6,
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(width * 0.03),
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: getBorderRadiusWidget(context, 8),
                      ),
                      child: const Icon(
                        Icons.favorite_border_rounded,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.02,
            right: width * 0.03,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.04,
                vertical: height * 0.008,
              ),
              decoration: BoxDecoration(
                borderRadius: getBorderRadiusWidget(context, 0.02),
                color: Colors.white60,
              ),
              child: const Text(
                'N1.5,',
                style: textStyle3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
