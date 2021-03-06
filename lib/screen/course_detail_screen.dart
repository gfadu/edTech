import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:edtech/utilities/text_style.dart';
import 'package:edtech/widget/components/app_bar.dart';
import 'package:edtech/widget/login/login_button.dart';
import 'package:flutter/material.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithLeadingIcon(text: KString.courseHeaderText),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Assets.images.courseDetailImage.image(),
            Align(
                alignment: Alignment.centerRight,
                child: Assets.images.price.image(scale: 2)),
            const Text(
              KString.courseHeader,
              style: TextStyles.courseContainerHeader,
            ),
            const Text(
              KString.courseDetail,
              textAlign: TextAlign.justify,
            ),
            const Text(
              KString.dutationHeader,
              style: TextStyles.courseContainerHeader,
            ),
            const Text(KString.duration),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: loginButton(context: context, text: 'Add to cart'))
          ],
        ),
      ),
    );
  }
}
