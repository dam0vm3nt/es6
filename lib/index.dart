import 'dart:html';
import 'dart:js';
import 'package:web_components_mini/web_components.dart';
import 'package:web_components_mini/interop.dart';
import 'polymer.dart';


class MyTag extends HtmlElement {
  MyTag.created() : super.created();

}


main() {

  Type myTag = MyTag;
  document.registerElement('my-tag',myTag);
}