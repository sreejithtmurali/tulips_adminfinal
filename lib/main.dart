import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tulips_admin/app/size_utils.dart';
import 'package:tulips_admin/core/app_export.dart';
//import 'package:posthub/webservice/productprovider.dart';
//import 'package:provider/provider.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';

//
// import 'app/app.locator.dart';
// import 'app/app.router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();

  await Firebase.initializeApp(
    options: FirebaseOptions(

        apiKey: "AIzaSyDBZZbqdnfJ3_z8B0mEinihYXKtzfZLChg",
        appId: "1:428245492316:android:92d89e658ee5c552f77c99",
        messagingSenderId: "428245492316",
        projectId: "yuslih-cf83d",
        storageBucket:"posthub-44ebb.appspot.com"
      //   apiKey: "AIzaSyD0uUZUE5kGOa36UPTNn1nnd3hEiLRE87M",
      // appId: "1:993064363208:android:15cca3fcfb86d071b831fd",
      // messagingSenderId: "993064363208",
      // projectId: "posthub-6def5",
      //   storageBucket:"posthub-6def5.appspot.com"
    ),
  );
  runApp( MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
       return MaterialApp(

         debugShowCheckedModeBanner: false,
          onGenerateRoute: StackedRouter().onGenerateRoute,
          navigatorKey: StackedService.navigatorKey,

        );
      },

    );
  }
}


