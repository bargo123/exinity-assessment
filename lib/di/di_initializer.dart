import 'package:exinity_assessment/di/di_initializer.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final diContainer = GetIt.instance;

@InjectableInit()
void configureDependencies() => diContainer.init();
