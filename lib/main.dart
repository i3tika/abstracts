//* package
// import 'package:abstracts/core/route/auto_route.dart';
// import 'package:abstracts/feature/form_key/form_key.dart';
// import 'package:abstracts/feature/sliver/sliver_widget.dart';
import 'dart:ui';


import 'package:abstracts/feature/sliver/sliver_widget.dart';
import 'package:abstracts/feature/testings_api/pages/json_phd.dart';
// import 'package:abstracts/feature/testings_api/pages/test_api_pagination.dart';
import 'package:abstracts/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


//* feature
// import 'package:abstracts/feature/testings_api/pages/json_phd.dart';
import 'package:abstracts/feature/_feature.dart';
import 'package:abstracts/core/ui/_ui.dart';
import 'package:abstracts/core/network/_network.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/storage/sher_storage.dart';
import 'local_lang/local_lang_bloc.dart';
// import 'feature/go_router/widgets/navigatorKey.dart';

//*
part 'app.dart';
part 'a_multi_repository_provider.dart';
part 'a_multi_bloc_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  sharedPreferences = await SharedPreferences.getInstance();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  // PostRepo postRepo = PostRepo();
  // List<PostModel> postModels = await postRepo.fetchPost();
  // log(postModels.toString());
  // await Hive.initFlutter();
  // await Hive.openBox('shop_box');
  // await Hive.openBox('box');
  runApp(
    const AMultiRepoProvider(
      aMultiBlocProvider: AMultiBlocProvider(app: MyApp()),
    ),
  );
}
