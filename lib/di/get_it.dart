
import 'package:injectable/injectable.dart';

import 'get_it.config.dart';
import 'package:get_it/get_it.dart';


final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',

)
void configureDependencies() => getIt.init();