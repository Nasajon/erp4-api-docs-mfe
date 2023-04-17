import 'package:activity_module/activity_module.dart';
import 'package:flutter_global_dependencies/flutter_global_dependencies.dart';
import 'package:process_module/process_module.dart';

import 'package:site_documentacao_api/pages/mope_page.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          transition: TransitionType.noTransition,
          child: (_, __) => const MopePage(),
        ),
        ChildRoute(
          '/processes/:process',
          child: (_, args) => ProcessPage(
            processCode: args.params['process'],
          ),
          transition: TransitionType.noTransition,
        ),
        ChildRoute(
          '/processes/:process/activities/:activity/resources/:resource',
          child: (_, args) => ActivityPage(
            activityCode: args.params['activity'],
            resourceName: args.params['resource'],
          ),
          transition: TransitionType.noTransition,
        ),
      ];
}
