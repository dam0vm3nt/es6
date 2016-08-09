import 'package:polymer_es6/polymer.dart';
import 'dart:html';
import 'dart:js';

abstract class MyTag  {
  int get counter;
  set counter(int v);

  Map get config => {
        'is': 'my-tag',
        'properties': {
          'counter': {'type': 'int', 'value' :() =>0, 'observer': 'counterChanged'}
        }
      };

  JsObject jsObject;

  beforeRegister() {
    print("BEFORE REGISTER CALLED MIXIN");
    jsObject = new JsObject.fromBrowserObject(this);
    jsObject["is"] = config['is'];
    jsObject["properties"] = new JsObject.jsify(config['properties']);
  }

  void sayHello(Event ev, detail) {
    ev.preventDefault();
    ev.stopImmediatePropagation();
    ev.stopPropagation();
    print("HELLO!");
    counter++;
  }

  counterChanged(_) {
    print("CHANGED! : ${counter}");
  }
}
