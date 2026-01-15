// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../providers/providers.dart';
import '../../utils/utils.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
        GlobalKey<ScaffoldMessengerState>();

    final goRouter = ref.watch(routerProvider);
    final themeManager = ref.watch(themeProvider);

    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return RefreshConfiguration(
          dragSpeedRatio: 0.91,
          headerBuilder: () => const MaterialClassicHeader(),
          footerBuilder: () => const ClassicFooter(),
          shouldFooterFollowWhenNotFull: (state) {
            // If you want load more with noMoreData state ,may be you should return false
            return false;
          },
          child: MaterialApp.router(
            localizationsDelegates: const [
              DefaultMaterialLocalizations.delegate,
              DefaultCupertinoLocalizations.delegate,
              DefaultWidgetsLocalizations.delegate,
            ],
            scaffoldMessengerKey: scaffoldMessengerKey,
            routeInformationParser: goRouter.routeInformationParser,
            routerDelegate: goRouter.routerDelegate,
            routeInformationProvider: goRouter.routeInformationProvider,
            theme: AppThemes.lightTheme,
            debugShowCheckedModeBanner: false,
            builder: (context, child) {
              return MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaler: TextScaler.noScaling),
                child: child!,
              );
            },
          ),
        );
      },
    );
  }
}
