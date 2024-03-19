import 'package:abstracts/core/network/Interceptors/dio_setings.dart';
import 'package:abstracts/core/storage/firebase_config/firebase_remote_keys.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';

class FirebaseRemoteService {
  FirebaseRemoteService._() : _remoteConfig = FirebaseRemoteConfig.instance;

  static FirebaseRemoteService? _instance;

  factory FirebaseRemoteService() => _instance ??= FirebaseRemoteService._();

  final FirebaseRemoteConfig _remoteConfig;

  String getString(String key) => _remoteConfig.getString(key);
  bool getBool(String key) => _remoteConfig.getBool(key);
  int getInt(String key) => _remoteConfig.getInt(key);
  double getDouble(String key) => _remoteConfig.getDouble(key);

  Future<void> initializeConfigService() async {
    await _setConfigSettings();
    if (isLk && kReleaseMode) {
      _setDefaultsProd();
    } else {
      await _setDefaultsStage();
    }
    await fetchAndActivate();
  }

  Future<void> _setConfigSettings() async => _remoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 1),
          minimumFetchInterval: const Duration(seconds: 1),
        ),
      );

  Future<void> _setDefaultsStage() async => _remoteConfig.setDefaults(
        const {
          FirebaseRemoteConfigKeys.testBool: true,
          
        },
      );

  Future<void> _setDefaultsProd() async => _remoteConfig.setDefaults(
        const {
          FirebaseRemoteConfigKeys.finalBool: true,
          
        },
      );

  Future<void> fetchAndActivate() async {
    bool updated = await _remoteConfig.fetchAndActivate();

    if (updated) {
      debugPrint('The config has been updated.');
    } else {
      debugPrint('The config is not updated..');
    }
  }
}
