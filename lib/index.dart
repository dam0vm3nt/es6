import 'dart:html';
import 'dart:js';


abstract class TestElement  {

  String get name;

  set name(v);

  var $;

  var properties;

  beforeRegisterDart() {
    this.properties = new JsObject.jsify({
      'name': {
        'type': 'String'
      }
    });
    return "my-tag";
  }

  void attached() {
    print("ATTACHED!");
    name = "pippolo";
  }

  void clicked(MouseEvent ev,b) {
    print("CLICKED : ${ev.target} , ${b}");
    var p = $['ciccio'];
    name="cicciolo ${b} , ${$}";
  }

}

