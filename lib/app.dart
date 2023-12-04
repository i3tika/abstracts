part of 'main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // AppRouter appRouter = AppRouter();
    return MaterialApp(
      // routerConfig: appRouter.config(),
      // navigatorKey: navigatorKey,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      // supportedLocales: [Locale('ru'), Locale('kg')],
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: PageScaffold(),
      // home: MySliver(),
    );
  }
}
