import 'package:flutter/material.dart';
import 'package:islami_sun_c10/model/screen_details_args.dart';
import 'package:islami_sun_c10/ui/screens/sura_details/sura_details.dart';
import 'package:islami_sun_c10/ui/utils/app_assets.dart';
import 'package:islami_sun_c10/ui/utils/app_colors.dart';
import 'package:islami_sun_c10/ui/utils/app_theme.dart';
import 'package:islami_sun_c10/ui/utils/constants.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 3, child: Center(child: Image.asset(AppAssets.quranTabLogo))),
        Expanded(
          flex: 7,
          child: Stack(
            alignment: Alignment.center,
            children: [
              buildScreenContent(),
              Container(
                width: 3,
                height: double.infinity,
                color: AppColors.orange,
              )
            ],
          ),
        )
      ],
    );
  }

  Widget buildScreenContent() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 3,
          color: AppColors.orange,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "Verses",
                  textAlign: TextAlign.center,
                  style: AppTheme.mediumTitleTextStyle,
                ),
              ),
              Expanded(
                  child: Text(
                "Sura name",
                textAlign: TextAlign.center,
                style: AppTheme.mediumTitleTextStyle,
              )),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 3,
          color: AppColors.orange,
        ),
        Expanded(flex: 7, child: buildSurasListView())
      ],
    );
  }

  ListView buildSurasListView() {
    return ListView.builder(
        itemCount: Constants.suraNames.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              ScreenDetailsArgs arguments = ScreenDetailsArgs(
                  fileName: "${index + 1}.txt",
                  name: Constants.suraNames[index]);
              Navigator.pushNamed(context, SuraDetails.routeName,
                  arguments: arguments);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: Text(
                  "${Constants.versesNumber[index]}",
                  textAlign: TextAlign.center,
                  style: AppTheme.regularTitleTextStyle,
                )),
                Expanded(
                    child: Text(
                  Constants.suraNames[index],
                  textAlign: TextAlign.center,
                  style: AppTheme.regularTitleTextStyle,
                )),
              ],
            ),
          );
        });
  }
}
