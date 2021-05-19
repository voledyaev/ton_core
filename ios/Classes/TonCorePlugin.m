#import "TonCorePlugin.h"
#if __has_include(<ton_core/ton_core-Swift.h>)
#import <ton_core/ton_core-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ton_core-Swift.h"
#endif

@implementation TonCorePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTonCorePlugin registerWithRegistrar:registrar];
}
@end
