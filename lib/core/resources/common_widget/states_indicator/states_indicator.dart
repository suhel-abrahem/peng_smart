import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import '../../../../../../../../../../../core/resources/common_widget/actions_buttons/try_agin_button.dart';

import '../../../../generated/locale_keys.g.dart';
import '../../../enums/assets_type_enum.dart';
import '../../assets_manager.dart';

Widget loadingIndicator({double? height}) {
  return Center(
    child: SizedBox(
      height: height ?? 500.h,
      child: LottieBuilder.asset(
        getAssetsPath(
            assetsName: LottiesName.loading, assetsType: AssetsType.lotties),
        fit: BoxFit.fitHeight,
      ),
    ),
  );
}

Widget errorVerticalIndicator(
    {double? height,
    double? lottieHeight,
    required BuildContext context,
    VoidCallback? onPressed}) {
  return SizedBox(
    height: height ?? 600.h,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: lottieHeight ?? 350.h,
          child: LottieBuilder.asset(
            getAssetsPath(
                assetsName: LottiesName.error, assetsType: AssetsType.lotties),
            fit: BoxFit.fitHeight,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Text(
            "${LocaleKeys.error}: ${LocaleKeys.pleasePressTheButtonBelowToTryAgin.tr()}",
            style: Theme.of(context).textTheme.labelLarge,
          ).tr(),
        ),
        TryAginButton(
          onPressed: onPressed,
        )
      ],
    ),
  );
}

Widget errorHorizontalIndicator(
    {double? width,
    double? lottieWidth,
    required BuildContext context,
    VoidCallback? onPressed}) {
  return SizedBox(
    width: width ?? 300.w,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: lottieWidth ?? 100.w,
          child: LottieBuilder.asset(
            getAssetsPath(
                assetsName: LottiesName.error, assetsType: AssetsType.lotties),
            fit: BoxFit.fitWidth,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Text(
                "${LocaleKeys.error}: ${LocaleKeys.pleasePressTheButtonBelowToTryAgin.tr()}",
                style: Theme.of(context).textTheme.labelLarge,
              ).tr(),
            ),
            TryAginButton(
              onPressed: onPressed,
            ),
          ],
        )
      ],
    ),
  );
}

Widget noInternetVerticalIndicator(
    {double? height,
    double? lottieHeight,
    required BuildContext context,
    VoidCallback? onPressed}) {
  return SizedBox(
    height: height ?? 600.h,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: lottieHeight ?? 350.h,
          child: LottieBuilder.asset(
            getAssetsPath(
                assetsName: LottiesName.noInternet,
                assetsType: AssetsType.lotties),
            fit: BoxFit.fitHeight,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Text(
            LocaleKeys.connection_noInternetError.tr(),
            style: Theme.of(context).textTheme.labelLarge,
          ).tr(),
        ),
        TryAginButton(
          onPressed: onPressed,
        )
      ],
    ),
  );
}

Widget noInternetHorizontalIndicator(
    {double? width,
    double? lottieWidth,
    required BuildContext context,
    VoidCallback? onPressed}) {
  return SizedBox(
    width: width ?? 300.w,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: lottieWidth ?? 100.w,
          child: LottieBuilder.asset(
            getAssetsPath(
                assetsName: LottiesName.noInternet,
                assetsType: AssetsType.lotties),
            fit: BoxFit.fitWidth,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Text(
                LocaleKeys.connection_noInternetError.tr(),
                style: Theme.of(context).textTheme.labelLarge,
              ).tr(),
            ),
            TryAginButton(
              onPressed: onPressed,
            ),
          ],
        )
      ],
    ),
  );
}

Widget noDataVerticalIndicator(
    {double? height,
    double? width,
    double? lottieHeight,
    required BuildContext context,
    VoidCallback? onPressed}) {
  return Center(
    child: SizedBox(
      height: height ?? 500.h,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: lottieHeight ?? 100.h,
            child: LottieBuilder.asset(
              getAssetsPath(
                  assetsName: LottiesName.noData,
                  assetsType: AssetsType.lotties),
              fit: BoxFit.fitHeight,
            ),
          ),
          Text(
            LocaleKeys.noThingToShow.tr(),
            style: Theme.of(context).textTheme.labelLarge,
          ),
          TryAginButton(
            onPressed: onPressed,
          )
        ],
      ),
    ),
  );
}

Widget noDataHorizontalIndicator(
    {double? height,
    double? width,
    double? lottieWidth,
    required BuildContext context,
    VoidCallback? onPressed}) {
  return Center(
    child: SizedBox(
      height: height ?? 500.h,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: lottieWidth ?? 100.w,
            child: LottieBuilder.asset(
              getAssetsPath(
                  assetsName: LottiesName.noData,
                  assetsType: AssetsType.lotties),
              fit: BoxFit.fitWidth,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                LocaleKeys.noThingToShow.tr(),
                style: Theme.of(context).textTheme.labelLarge,
              ),
              TryAginButton(
                onPressed: onPressed,
              ),
            ],
          )
        ],
      ),
    ),
  );
}
