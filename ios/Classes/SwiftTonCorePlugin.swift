import Flutter
import UIKit

public class SwiftTonCorePlugin: NSObject, FlutterPlugin {
    public static func register(with _: FlutterPluginRegistrar) {}

    public func handle(_: FlutterMethodCall, result: @escaping FlutterResult) {
        result(nil)
    }

    public func dummyMethodToEnforceBundling() {
        // This will never be executed

        get_account(0, nil);

        get_transactions(0, nil, 0, 0);

        generate_message(0, 0, 0, nil, nil, nil, nil, nil);

        estimate_fees(0, 0, nil);

        send_message(0, 0, nil);

        generate_mnemonic();

        generate_keypair_from_mnemonic(nil);

        generate_deploy_message(0, 0, nil, nil, nil, nil);

        cstring_free(nil);

        generate_address(0, 0, nil, nil);
    }
}
