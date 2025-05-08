import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/app/app.dart';
import 'config/app/app_preferences.dart';
import 'core/constants/language_constants.dart';
import 'core/injection_container.dart';
import 'features/login/presentations/bloc/login_bloc.dart';
import 'firebase_options.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BackgroundIsolateBinaryMessenger.ensureInitialized(
      RootIsolateToken.instance!);
  await initializeDependencies();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // FirebaseFirestore.instance.settings =
  //     const Settings(persistenceEnabled: true, sslEnabled: true);
  await EasyLocalization.ensureInitialized();
  
  runApp(
    EasyLocalization(
        supportedLocales: LanguageConstant.supportedLanguages,
        path: 'assets/translations',
        fallbackLocale: LanguageConstant.ARABIC_LOCAL,
        startLocale: getItInstance<AppPreferences>().getAppLanguageLocale(),
        child: MultiBlocProvider(providers: [
          
          BlocProvider(
            create: (context) =>
                BlocProvider.of<LoginBloc>(context)..add(LoginEventStarted()),
          ),
        ], child: const UserApp())),
  );
}
