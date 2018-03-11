import 'dart:html';
import 'dart:core';
import 'package:react/react_dom.dart' as react_dom;
import 'package:react/react_client.dart' as react_client;
import 'package:over_react/over_react.dart';


void main() {
  // Initialize React within our Dart App:
  react_client.setClientConfiguration();

  // Render our top level react component:
  react_dom.render(Dom.div()('Hello, World!'), querySelector('#react_mount_point'));
}