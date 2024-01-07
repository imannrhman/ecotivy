
import 'package:ecotivy/di/get_it.dart';
import 'package:ecotivy/utils/resource_manager.dart';

void setupLocator() {
  getIt.registerSingletonAsync(() => SVGResourceManager.preLoadResources());
  getIt.registerSingleton<PNGResourceManager>(PNGResourceManager());
}