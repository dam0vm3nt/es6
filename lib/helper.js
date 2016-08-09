var helper = helper || {};
window.helper = helper;

(function(helper) {
    var dart_sdk = dart_library.import('dart_sdk');

    helper.registerPolymer = function(type) {
        Polymer(dart_sdk.dart.unwrapType(type))
    };

    helper.unwrap = function(type) {
        return dart_sdk.dart.unwrapType(type);
    }

    helper.dartFunc= function(module,library,func) {
        return dart_library.import(module)[library][func];
    };

    helper.polymerDart= function(module,library,type) {
        return Polymer(dart_library.import(module)[library][type]);
    };

})(helper);

