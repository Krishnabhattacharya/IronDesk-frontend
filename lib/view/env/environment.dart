import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:permission_handler/permission_handler.dart';

import 'app.dart';
import '../../core/core.dart';
import '../../utils/utils.dart';

enum EnvType { DEVELOPMENT, STAGING, PRODUCTION }

class Environment {
  Environment() {
    // value = this;
    _init();
  }

  Future<void> _init() async {
    print('Firebase apps before init: ${Firebase.apps.map((e) => e.name)}');

    WidgetsFlutterBinding.ensureInitialized();
    // await Firebase.initializeApp(
    // options: FirebaseOptions(
    //   apiKey: "AIzaSyD6_1PlDUZ4yU4Gb_M26vBUuYbSvY5lCK0",
    //   appId: "1:427355627966:android:6ce208da5c97c2fbf399ef",
    //   messagingSenderId: "427355627966",
    //   projectId: "bookedlens-2d1d2",
    // ),
    //);
    await SharedPreferenceService.init();
    // FirebaseMessaging.onBackgroundMessage(handleBackgroundMessageHandler);
    // await FirebaseNotification().initNotification();
    //await PushNotificationService.initialize();

    await Permission.activityRecognition.request();

    // await Permission.location.request();
    // await Purchases.setLogLevel(LogLevel.debug);
    // PurchasesConfiguration? configuration;
    // if (Platform.isIOS) {
    //   configuration =
    //       PurchasesConfiguration("appl_NRVBRQVgbFwRdzOdNkrCuUpnraI");
    // }
    // if (Platform.isAndroid) {
    //   configuration =
    //       PurchasesConfiguration("goog_RAdeaeuOnhscykzWcMNVKYLoFxl");
    // }
    // await Purchases.configure(configuration ?? PurchasesConfiguration(''));
    try {
      //setupServiceLocator();
      // await dotenv.load();
    } catch (e) {
      Logger.write(e.toString());
    }
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]).then((_) {
      runApp(ProviderScope(child: MyApp()));
    });
  }
}
