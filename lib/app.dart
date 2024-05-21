part of 'main.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

Widget buildPreview(BuildContext context, Widget child) {
  // You may need to initialize app state here

  // Wrap the MaterialApp with any widgets your app requires, such as
  // ProviderScope for Riverpod or BlocProvider for Bloc.
  return MaterialApp(
    // TODO: Import your app's theme below
    // theme: getTheme(),
    // darkTheme: getDarkTheme(),
    home: child,
  );
}

class _MyAppState extends State<MyApp> {
  final appRouter = getIt<AppRouter>();
  @override
  Widget build(BuildContext context) {
    // AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      // routerConfig: appRouter.config(),
      // navigatorKey: navigatorKey,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routerConfig: appRouter.config(),
      supportedLocales: S.delegate.supportedLocales,
      // supportedLocales: [Locale('ru'), Locale('kg')],
      debugShowCheckedModeBanner: false,
      theme: buildTheme(),
      // home: PaginationPage(),
      // home: PageScaffold(),
    );
  }

  ThemeData buildTheme() {
    return ThemeData.dark();
  }
}
