import 'package:flutter_modular/flutter_modular.dart';
import 'package:intelicity_auth_microapp_flutter/helpers/guards/admin_guard.dart';
import 'package:intelicity_auth_microapp_flutter/login.dart';
import 'package:intelicity_auth_microapp_flutter/micro_app_logged_module.dart';
import 'package:intelicity_auth_web/amplifyconfiguration.dart';
import 'package:intelicity_auth_web/app/home/domain/repositories/uri_repository.dart';
import 'package:intelicity_auth_web/app/home/domain/usecases/get_params.dart';
import 'package:intelicity_auth_web/app/home/domain/usecases/set_params.dart';
import 'package:intelicity_auth_web/app/home/infra/repositories/uri_repository_impl.dart';
import 'package:intelicity_auth_web/app/home/presenter/pages/home_page.dart';
import 'package:intelicity_auth_web/app/home/presenter/stores/home_store.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [MicroAppAuthModule(amplifyconfig)];

  @override
  void binds(i) {
    i.addSingleton<UriRepository>(UriRepositoryImpl.new);
    i.addLazySingleton<GetParams>(GetParamsImpl.new);
    i.addLazySingleton<SetParams>(SetParamsImpl.new);
    i.add(HomeStore.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
    r.module('/login', module: MicroAppLoginModule(amplifyconfig));
    r.module('/admin/',
        module: MicroAppAdminModule(amplifyconfig), guards: [AdminGuard()]);
  }
}
