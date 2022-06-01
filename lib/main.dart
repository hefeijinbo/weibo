import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weibo/pages/splash_page.dart';
import 'package:weibo/public.dart';
import 'package:leancloud_storage/leancloud.dart';

void main() {
  runApp(new MyApp());
  LeanCloud.initialize(
      "p3YYULf1m77fkNeJxhWFnFzo-9Nh9j0Va", "HcL2CSSGcShlibiem0QnCGoq",
      server: "https://p3yyulf1.lc-cn-e1-shared.com",
      queryCache: new LCQueryCache());
  if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xffffffff),
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Color(0xffffffff),
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    );
     SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Routes.configureRoutes(FluroRouter.appRouter);
    Routes.router = FluroRouter.appRouter;

    return Container(
      child: MaterialApp(
          title: "HRL微博",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primaryColor: Colors.white),
          onGenerateRoute: Routes.router.generator,
          home: SplashPage()),
    );
  }
}
