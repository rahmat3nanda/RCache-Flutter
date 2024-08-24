import Flutter
import UIKit

public class RCacheFlutterPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: RCacheFlutterMethod.channel.rawValue, binaryMessenger: registrar.messenger())
        let instance = RCachePlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let args = call.arguments as? Dictionary<String, Any> else {
            result(FlutterMethodNotImplemented)
            return
        }
        
        let type = args["type"] as? String
        
        switch(type) {
        case RCacheFlutterMethod.Key.common.rawValue: RCacheFlutterHandler.common(call, result: result)
        case RCacheFlutterMethod.Key.credentials.rawValue: RCacheFlutterHandler.credentials(call, result: result)
        case RCacheFlutterMethod.Key.clear.rawValue: RCacheFlutterHandler.clear(result: result)
        default: result(FlutterError(code: "1", message: "Type not Defined", details: nil))
        }
    }
}
