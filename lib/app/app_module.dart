import 'package:activity_module/activity_module.dart';
import 'package:flutter_global_dependencies/flutter_global_dependencies.dart';
import 'package:process_module/process_module.dart';

import 'package:site_documentacao_api/pages/autentication_page.dart';
import 'package:site_documentacao_api/pages/general_disposals_page.dart';
import 'package:site_documentacao_api/pages/mope_page.dart';

import 'package:site_documentacao_api/widgets/mope/mobile/tree_list_mope_controller.dart';

class AppModule extends Module {
    @override
  void binds(i) {
    i
    .addLazySingleton(() => TreeListMopeController());
   
  }
 
 @override
  void routes(r) {
    r
        ..child(
          '/',
          child: (context) => MopePage(
            controller: Modular.get<TreeListMopeController>(),
          ),
        )
        ..child(
          '/authentication',
         
          child: (context) => AuthenticationPage(),
        )
        ..child(
          '/general-disposals',
         
          child: (context) => GerneralDisposalsPage(),
        )
        ..child(
          '/processes/:process',
          child: (context) => ProcessPage(
            processCode: r.args.params['process'],
          ),
         
        )
        ..child(
          '/processes/:process/activities/:activity/resources/:resource',
          child: (context) => ActivityPage(
            activityCode: r.args.params['activity'],
            resourceName: r.args.params['resource'],
          )
         
        );
  }
}
