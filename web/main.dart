import 'dart:html';
import 'dart:core';
import 'package:react/react_dom.dart' as react_dom;
import 'package:react/react_client.dart' as react_client;
import 'package:over_react/over_react.dart';

import 'package:quest_tracker/src/quest_module.dart';

void main() {
  // Initialize React within our Dart App:
  react_client.setClientConfiguration();

  QuestModule questModule = new QuestModule();

  // Render our top level react component:
  react_dom.render(questModule.components.content(), querySelector('#react_mount_point'));
}