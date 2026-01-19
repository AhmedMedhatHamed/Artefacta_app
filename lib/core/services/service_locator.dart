import 'package:artefacta_app/core/database/cache/cache_helpers.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator(){
getIt.registerSingleton <CacheHelper> (CacheHelper());
}