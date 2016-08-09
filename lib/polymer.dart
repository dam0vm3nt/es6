@JS("helper")
library polymer.helper;

import 'package:js/js.dart';
import 'dart:js';

@JS()
external registerPolymer(Type dartType);

@JS()
external unwrap(Type dartType);


abstract class PolymerElementMixin {
  JsObject jsObject;

  Map get config;
  beforeRegister() {
    print("BEFORE REGISTER CALLED MIXIN");
    jsObject = new JsObject.fromBrowserObject(this);
    jsObject["is"] = config['is'];
    jsObject["properties"] = new JsObject.jsify(config['properties']);
  }


}
