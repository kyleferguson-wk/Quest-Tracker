import 'package:w_module/w_module.dart';

import 'package:quest_tracker/src/components/app.dart';

class QuestModule extends Module {
  QuestModuleComponents _components;

  QuestModule() {
    _components = new QuestModuleComponents();
  }

  @override
  QuestModuleComponents get components => _components;
}

class QuestModuleComponents extends ModuleComponents {
  QuestModuleComponents();

  @override
  content() {
    return (App()..appTitle = 'Quest Tracker')();
  }
}
