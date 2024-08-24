//
//  RCacheFlutterHandler.swift
//  rcache
//
//  Created by Rahmat Trinanda Pramudya Amar on 24/08/24.
//

import Flutter
import RCache

internal class RCacheFlutterHandler {
    
    internal class func common(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        
        if (call.method == RCacheFlutterMethod.Key.clear.rawValue) {
            RCache.common.clear()
            result("Success clear")
            return
        }
        
        guard let args = call.arguments as? Dictionary<String, Any> else {
            result(FlutterMethodNotImplemented)
            return
        }
        
        guard let key = args["key"] as? String else {
            result(FlutterError(code: "2", message: "RCache Key not defined", details: nil))
            return
        }
        
        switch call.method {
        case RCacheFlutterMethod.Key.Save.data.rawValue:
            if let data = args["value"] as? FlutterStandardTypedData {
                RCache.common.save(data: data.data, key: RCache.Key(key))
                result("Success saving")
            } else {
                result(FlutterError(code: "3", message: "Invalid format", details: nil))
            }
        case RCacheFlutterMethod.Key.Save.string.rawValue:
            RCache.common.save(string: args["value"] as! String, key: RCache.Key(key))
            result("Success saving")
        case RCacheFlutterMethod.Key.Save.bool.rawValue:
            RCache.common.save(bool: args["value"] as! Bool, key: RCache.Key(key))
            result("Success saving")
        case RCacheFlutterMethod.Key.Save.integer.rawValue:
            RCache.common.save(integer: args["value"] as! Int, key: RCache.Key(key))
            result("Success saving")
        case RCacheFlutterMethod.Key.Save.array.rawValue:
            RCache.common.save(array: args["value"] as! [Any], key: RCache.Key(key))
            result("Success saving")
        case RCacheFlutterMethod.Key.Save.dictionary.rawValue:
            RCache.common.save(dictionary: args["value"] as! [String:Any], key: RCache.Key(key))
            result("Success saving")
        case RCacheFlutterMethod.Key.Save.double.rawValue:
            RCache.common.save(double: args["value"] as! Double, key: RCache.Key(key))
            result("Success saving")
        case RCacheFlutterMethod.Key.Read.data.rawValue:
            result(RCache.common.readData(key: RCache.Key(key)))
        case RCacheFlutterMethod.Key.Read.string.rawValue:
            result(RCache.common.readString(key: RCache.Key(key)))
        case RCacheFlutterMethod.Key.Read.bool.rawValue:
            result(RCache.common.readBool(key: RCache.Key(key)))
        case RCacheFlutterMethod.Key.Read.integer.rawValue:
            result(RCache.common.readInteger(key: RCache.Key(key)))
        case RCacheFlutterMethod.Key.Read.array.rawValue:
            result(RCache.common.readArray(key: RCache.Key(key)))
        case RCacheFlutterMethod.Key.Read.dictionary.rawValue:
            result(RCache.common.readDictionary(key: RCache.Key(key)))
        case RCacheFlutterMethod.Key.Read.double.rawValue:
            result(RCache.common.readDouble(key: RCache.Key(key)))
        case RCacheFlutterMethod.Key.Read.double.rawValue:
            RCache.common.remove(key: RCache.Key(key))
            result("Success saving")
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    internal class func credentials(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        
        if (call.method == RCacheFlutterMethod.Key.clear.rawValue) {
            RCache.credentials.clear()
            result("Success clear")
            return
        }
        
        guard let args = call.arguments as? Dictionary<String, Any> else {
            result(FlutterMethodNotImplemented)
            return
        }
        
        guard let key = args["key"] as? String else {
            result(FlutterError(code: "2", message: "RCache Key not defined", details: nil))
            return
        }
        
        switch call.method {
        case RCacheFlutterMethod.Key.Save.data.rawValue:
            if let data = args["value"] as? FlutterStandardTypedData {
                RCache.credentials.save(data: data.data, key: RCache.Key(key))
                result("Success saving")
            } else {
                result(FlutterError(code: "3", message: "Invalid format", details: nil))
            }
        case RCacheFlutterMethod.Key.Save.string.rawValue:
            RCache.credentials.save(string: args["value"] as! String, key: RCache.Key(key))
            result("Success saving")
        case RCacheFlutterMethod.Key.Save.bool.rawValue:
            RCache.credentials.save(bool: args["value"] as! Bool, key: RCache.Key(key))
            result("Success saving")
        case RCacheFlutterMethod.Key.Save.integer.rawValue:
            RCache.credentials.save(integer: args["value"] as! Int, key: RCache.Key(key))
            result("Success saving")
        case RCacheFlutterMethod.Key.Save.array.rawValue:
            RCache.credentials.save(array: args["value"] as! [Any], key: RCache.Key(key))
            result("Success saving")
        case RCacheFlutterMethod.Key.Save.dictionary.rawValue:
            RCache.credentials.save(dictionary: args["value"] as! [String:Any], key: RCache.Key(key))
            result("Success saving")
        case RCacheFlutterMethod.Key.Save.double.rawValue:
            RCache.credentials.save(double: args["value"] as! Double, key: RCache.Key(key))
            result("Success saving")
        case RCacheFlutterMethod.Key.Read.data.rawValue:
            result(RCache.credentials.readData(key: RCache.Key(key)))
        case RCacheFlutterMethod.Key.Read.string.rawValue:
            result(RCache.credentials.readString(key: RCache.Key(key)))
        case RCacheFlutterMethod.Key.Read.bool.rawValue:
            result(RCache.credentials.readBool(key: RCache.Key(key)))
        case RCacheFlutterMethod.Key.Read.integer.rawValue:
            result(RCache.credentials.readInteger(key: RCache.Key(key)))
        case RCacheFlutterMethod.Key.Read.array.rawValue:
            result(RCache.credentials.readArray(key: RCache.Key(key)))
        case RCacheFlutterMethod.Key.Read.dictionary.rawValue:
            result(RCache.credentials.readDictionary(key: RCache.Key(key)))
        case RCacheFlutterMethod.Key.Read.double.rawValue:
            result(RCache.credentials.readDouble(key: RCache.Key(key)))
        case RCacheFlutterMethod.Key.Read.double.rawValue:
            RCache.credentials.remove(key: RCache.Key(key))
            result("Success saving")
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    internal class func clear(result: @escaping FlutterResult) {
        RCache.clear()
        result("Success clear")
    }
}
