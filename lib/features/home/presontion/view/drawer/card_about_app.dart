import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class CardAboutApp extends StatelessWidget {
  const CardAboutApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
      child: GestureDetector(
        onTap: () {
          final Uri url = Uri.parse('https://linktr.ee/mustafa_magdy');
          launchUrl(url, mode: LaunchMode.inAppBrowserView);
        },
        child: Card(
          child: ListTile(
            leading: const Icon(
              Icons.info_outline,
              // color: Colors.grey[600],
            ),
            title: Text(S.of(context).Airstrikes),
          ),
        ),
      ),
    );
  }
}
