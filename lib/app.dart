part of 'main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // AppRouter appRouter = AppRouter();

    return MaterialApp(
      // locale: lang,
      // routerConfig: appRouter.config(),
      // navigatorKey: navigatorKey,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('kg'),
      ],
      // supportedLocales: [Locale('ru'), Locale('kg')],
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      // home: Home(),
      home: MySliver(),
    );
  }
}
// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => LanguageCubit(),
//       child: BlocBuilder(builder: (context, lang) {
//         return MaterialApp(
//           locale: lang,
//           title: 'Localizations Sample App',
//           localizationsDelegates: [
//             S.delegate,
//             GlobalMaterialLocalizations.delegate,
//             GlobalWidgetsLocalizations.delegate,
//             GlobalCupertinoLocalizations.delegate,
//           ],
//           supportedLocales: [
//             const Locale('en', ''), // English, no country code
//             const Locale('es', ''), // Spanish, no country code
//             const Locale('tr', ''),
//             const Locale('it', ''),
//           ],
//           home: Home(),
//         );
//       }),
//     );
//   }
// }
