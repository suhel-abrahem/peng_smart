import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../../../../core/enums/psition_enum.dart';

import '../../../../config/app/app.dart';
import '../../../../config/app/app_preferences.dart';
import '../../../../config/routes/routes_manager.dart';
import '../../../../core/enums/assets_type_enum.dart';
import '../../../../core/enums/theme_enums.dart';
import '../../../../core/extensions/screen_size.dart';
import '../../../../core/extensions/theme_data_extensions.dart';
import '../../../../core/injection_container.dart';
import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/common_widget/dropdown/dropdown.dart';
import '../../../../core/resources/common_widget/input_field/input_field_widget.dart';
import '../../../../core/resources/language_manager.dart';
import '../../../../core/resources/validator.dart';
import '../../../../core/util/helper.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../domain/entities/login_entity.dart';
import '../bloc/login_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final MediaQueryData mediaQuery = const MediaQueryData();

  final double actionContainerRadius = 42.r;
  String? currentLanguage;
  String? errorMessage;
  String? emailState = LocaleKeys.validation_emailField
      .tr(namedArgs: {"email": Validator.emailExample});
  String? passwordState = LocaleKeys.validation_passwordField.tr();
  ThemeDataBrightness? currentTheme;
  late bool isDarkTheme;
  bool isHidden = true;
  IconData changeThemButtonIcon = Icons.dark_mode;

  String? showErrorMessage(String? message) {
    if (message?.contains(
            '[firebase_auth/unknown] An unknown error occurred: FirebaseError: Firebase: The supplied auth credential is incorrect, malformed or has expired. (auth/invalid-credential).') ??
        false) {
      return LocaleKeys.auth_wrongEmailOrPassword.tr();
    }
    return message;
  }

  @override
  void initState() {
    currentLanguage = getItInstance<AppPreferences>().getAppLanguage();
    isDarkTheme = getItInstance<AppPreferences>().getThemeBool();
    currentTheme = Helper.getCurrentThemeEnum(isDarkTheme);
    changeThemButtonIcon = Helper.getThemeButtonText(isDarkTheme);
    //getItInstance<AppPreferences>().setUserFirstUse();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant LoginPage oldWidget) {
    if (!emailRegex.hasMatch(emailController.text)) {
      emailState = LocaleKeys.validation_emailField
          .tr(namedArgs: {"email": Validator.emailExample});
    } else {
      emailState = '';
    }
    if (passwordController.text.isEmpty) {
      passwordState = LocaleKeys.validation_passwordField.tr();
    } else {
      passwordState = '';
    }
    if ((emailState?.isEmpty ?? false) && (passwordState?.isEmpty ?? false)) {
      canLogin = true;
    } else {
      canLogin = false;
    }
    setState(() {});
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    getItInstance<AppPreferences>().setUserFirstUse(state: false);
    super.dispose();
  }

  final loginFieldKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RegExp emailRegex = RegExp(Validator.emailRegex);
  bool canLogin = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ThemeSwitchingArea(
        child: Scaffold(
            backgroundColor: Theme.of(context).colorScheme.surface,
            body: Form(
              autovalidateMode: AutovalidateMode.always,
              key: loginFieldKey,
              onChanged: () {
                setState(() {
                  emailState = emailState;
                  passwordState = passwordState;
                  if ((emailState?.isEmpty ?? false) &&
                      (passwordState?.isEmpty ?? false)) {
                    canLogin = true;
                  } else {
                    canLogin = false;
                  }
                });
              },
              child: BlocProvider(
                create: (context) => getItInstance<LoginBloc>(),
                child: BlocBuilder<LoginBloc, LoginState>(
                  builder: (blocContext, blocState) {
                    if (blocState is Logined) {
                      getItInstance<AppPreferences>().setUserLoginState();
                      errorMessage = '';

                      context.go(RoutesPaths.homeRoute);
                    }
                    if (blocState is LoginError) {
                      print(blocState.error);
                      errorMessage = blocState.error;
                    }
                    return SingleChildScrollView(
                      child: SizedBox(
                        width: mediaQuery.w,
                        height: mediaQuery.h,
                        child: Stack(
                          children: [
                            //main container
                            PositionedDirectional(
                                bottom: 0,
                                start: 0,
                                child: Container(
                                  padding: EdgeInsets.only(top: 150.h),
                                  width: mediaQuery.w,
                                  height: 400.h,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primaryContainer,
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20.r))),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Visibility(
                                        visible:
                                            emailState?.isNotEmpty ?? false,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 15.w,
                                              height: 15.h,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .surface),
                                            ),
                                            SizedBox(
                                              width: 300.w,
                                              child: Text(
                                                emailState ?? '',
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ).animate().slideX(
                                          delay: Duration(milliseconds: 1600),
                                          begin: -2,
                                          end: 0,
                                          duration:
                                              Duration(milliseconds: 300)),
                                      Visibility(
                                        visible:
                                            passwordState?.isNotEmpty ?? false,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 15.w,
                                              height: 15.h,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .surface),
                                            ),
                                            SizedBox(
                                              width: 300.w,
                                              child: Text(
                                                passwordState ?? '',
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ).animate().slideX(
                                          delay: Duration(milliseconds: 1600),
                                          begin: -2,
                                          end: 0,
                                          duration:
                                              Duration(milliseconds: 300)),
                                      Visibility(
                                        visible:
                                            errorMessage?.isNotEmpty ?? false,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 15.w,
                                              height: 15.h,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .surface),
                                            ),
                                            SizedBox(
                                              width: 300.w,
                                              child: Text(
                                                errorMessage ?? '',
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ).animate().slideX(
                                          delay: Duration(milliseconds: 1600),
                                          begin: -2,
                                          end: 0,
                                          duration:
                                              Duration(milliseconds: 300)),
                                      SizedBox(
                                        width: 260.w,
                                        child: ElevatedButton(
                                            onPressed: (canLogin &&
                                                    (blocState
                                                        is! LoginLoginIn))
                                                ? () {
                                                    BlocProvider.of<LoginBloc>(
                                                            blocContext)
                                                        .add(LoginEventLogin(
                                                            loginEntity: LoginEntity(
                                                                email:
                                                                    emailController
                                                                        .text,
                                                                password:
                                                                    passwordController
                                                                        .text)));
                                                  }
                                                : null,
                                            child: Text(
                                                LocaleKeys.auth_login.tr())),
                                      )
                                    ],
                                  ),
                                ).animate().slideY(
                                      duration: Duration(milliseconds: 600),
                                      begin: 1,
                                      end: 0,
                                    )),
                            // circle container
                            PositionedDirectional(
                                bottom: 250.h,
                                start: 0,
                                end: 0,
                                child: Container(
                                  width: 240.w,
                                  height: 350.h,
                                  decoration: BoxDecoration(
                                      color:
                                          Theme.of(context).colorScheme.surface,
                                      shape: BoxShape.circle),
                                ).animate().slideY(
                                      duration: Duration(milliseconds: 600),
                                      begin: 1,
                                      end: 0,
                                    )),
                            PositionedDirectional(
                                bottom: 250.h,
                                start: 0,
                                end: 0,
                                child: Container(
                                  width: 240.w,
                                  height: 350.h,
                                  decoration: BoxDecoration(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      shape: BoxShape.circle),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomInputField(
                                        controller: emailController,
                                        outerLabel: LocaleKeys.auth_email.tr(),
                                        outerLabelPosition: Position.upper,
                                        width: 200.w,
                                        height: 40.h,
                                        textInputType:
                                            TextInputType.emailAddress,
                                        style: TextStyle(fontSize: 12.sp),
                                        haveOuterLabel: true,
                                        outerLabelPadding: EdgeInsets.only(
                                          bottom: 12.h,
                                        ),
                                        validator: (string) {
                                          string ??= '';
                                          if (!emailRegex.hasMatch(string)) {
                                            emailState = LocaleKeys
                                                .validation_emailField
                                                .tr(namedArgs: {
                                              "email": Validator.emailExample
                                            });
                                            return null;
                                          } else {
                                            emailState = '';
                                          }
                                          return null;
                                        },
                                      ),
                                      CustomInputField(
                                        controller: passwordController,
                                        outerLabel:
                                            LocaleKeys.auth_password.tr(),
                                        outerLabelPosition: Position.upper,
                                        haveOuterLabel: true,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        width: 200.w,
                                        height: 40.h,
                                        style: TextStyle(fontSize: 12.sp),
                                        obscureText: isHidden,
                                        outerLabelPadding: EdgeInsets.symmetric(
                                          vertical: 12.h,
                                        ),
                                        prefixPadding: EdgeInsets.symmetric(
                                            horizontal: 8.w),
                                        prefix: SizedBox(
                                          height: 30.h,
                                          width: 20.w,
                                          child: IconButton(
                                            style: Theme.of(context)
                                                .iconButtonTheme
                                                .style
                                                ?.copyWith(
                                                    padding:
                                                        const MaterialStatePropertyAll(
                                                            EdgeInsets.zero)),
                                            icon: Icon(
                                              isHidden
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                isHidden = !isHidden;
                                              });
                                            },
                                          ),
                                        ),
                                        validator: (string) {
                                          string ??= '';
                                          if (string.isEmpty) {
                                            passwordState = LocaleKeys
                                                .validation_passwordField
                                                .tr();
                                            return null;
                                          } else {
                                            passwordState = '';
                                          }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ).animate().slideY(
                                    duration: Duration(milliseconds: 1000),
                                    begin: -2,
                                    end: 0,
                                    curve: Curves.bounceIn,
                                    delay: Duration(milliseconds: 600))),
                            PositionedDirectional(
                              start: 0,
                              child: Container(
                                      width: 340.w,
                                      height: 70.h,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 24.w),
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .primaryColor
                                            .withOpacity(.3),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          DropDownWithLabel<String>(
                                              label: LocaleKeys.language.tr(),
                                              dropDownWidth: 100.w,
                                              dropDownHeight: 39.h,
                                              items: supportedLanguagesList,
                                              isLoading: false,
                                              value: currentLanguage,
                                              onChange: (language) async {
                                                setState(() {
                                                  currentLanguage = language;

                                                  context.setLocale(
                                                      (getLanguageLocale(
                                                          currentLanguage ??
                                                              supportedLanguagesList[
                                                                  0])));
                                                  getItInstance<
                                                          AppPreferences>()
                                                      .setAppLanguage(
                                                          language:
                                                              currentLanguage ??
                                                                  supportedLanguagesList[
                                                                      0]);
                                                  globalCurrentLanguage =
                                                      language;
                                                });
                                              },
                                              stringConverter: (string) {
                                                return string.toString();
                                              }),
                                          ThemeSwitcher(builder: (context2) {
                                            return TextButton(
                                              child: Icon(changeThemButtonIcon),
                                              style: Theme.of(context)
                                                  .textButtonTheme
                                                  .style
                                                  ?.copyWith(
                                                      padding:
                                                          const WidgetStatePropertyAll(
                                                              EdgeInsets.zero)),
                                              onPressed: () {
                                                setState(() {
                                                  isDarkTheme = !(isDarkTheme);
                                                  changeThemButtonIcon =
                                                      Helper.getThemeButtonText(
                                                          isDarkTheme);
                                                  currentTheme = Helper
                                                      .getCurrentThemeEnum(
                                                          isDarkTheme);
                                                  getItInstance<
                                                          AppPreferences>()
                                                      .setTheme(
                                                          themeData: currentTheme ??
                                                              ThemeDataBrightness
                                                                  .darkTheme);
                                                });
                                                ThemeSwitcher.of(context2)
                                                    .changeTheme(
                                                        offset: const Offset(
                                                            -1, -1),
                                                        theme: getItInstance<
                                                                AppPreferences>()
                                                            .getTheme(),
                                                        isReversed:
                                                            true // default: false
                                                        );
                                              },
                                            );
                                          })
                                        ],
                                      ))
                                  .animate()
                                  .slide(
                                      delay: const Duration(milliseconds: 1600),
                                      duration:
                                          const Duration(milliseconds: 1000),
                                      begin: const Offset(-1, -1),
                                      end: Offset.zero,
                                      curve: Curves.bounceIn),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )),
      ),
    );
  }
}
