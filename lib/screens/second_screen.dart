import 'package:flutter/material.dart';
import 'package:flutter_real_state_ui/theme/border.dart';
import 'package:flutter_real_state_ui/theme/colors.dart';

import '../theme/text_styles.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    const desc =
        'At Allen Estates we understand that it can be difficult to decide which agent you should appoint to sell your home. We believe that a good start is usually recommendations from friends and family and testimonials from previous customers. Whatever you decide, your final choice needs to come down to the agency that you feel most comfortable with';
    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Image.asset(
              'pic3.jpg',
              width: width,
              height: height * 0.5,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: width,
                height: height * 0.55,
                decoration: BoxDecoration(
                  color: backGroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(width * 0.08),
                    topRight: Radius.circular(width * 0.08),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05,
                  vertical: height * 0.02,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Blak\nMansion',
                              style: textStyle1,
                            ),
                            SizedBox(height: height * 0.02),
                            const Text(
                              'Allen Estate',
                              style: textStyle4,
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: getBorderRadiusWidget(context, 0.04),
                          child: Image.asset(
                            'pic2.png',
                            height: height * 0.13,
                            width: width * 0.16,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: getBorderRadiusWidget(context, 0.04),
                          child: Image.asset(
                            'pic1.jpg',
                            height: height * 0.13,
                            width: width * 0.16,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: getBorderRadiusWidget(context, 0.04),
                          child: Image.asset(
                            'pic4.jpg',
                            height: height * 0.13,
                            width: width * 0.16,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.03),
                    const Text(
                      'Description',
                      style: textStyle3,
                    ),
                    const Text(
                      desc,
                      style: textStyle8,
                    ),
                    SizedBox(height: height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'price',
                              style: textStyle9,
                            ),
                            Row(
                              children: const [
                                Text(
                                  'N1.5m',
                                  style: textStyle2,
                                ),
                                Text(
                                  '/per Annum',
                                  style: textStyle8,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.08,
                            vertical: height * 0.02,
                          ),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                buttonColor1,
                                buttonColor2,
                              ],
                            ),
                            borderRadius: getBorderRadiusWidget(context, 8),
                          ),
                          child: const Text(
                            'Rent Now',
                            style: textStyle3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: height * 0.05,
                horizontal: width * 0.03,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(width * 0.03),
                    decoration: BoxDecoration(
                      borderRadius: getBorderRadiusWidget(context, 0.04),
                      color: Colors.white38,
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(width * 0.03),
                    decoration: BoxDecoration(
                      borderRadius: getBorderRadiusWidget(context, 0.04),
                      color: Colors.white38,
                    ),
                    child: const Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
