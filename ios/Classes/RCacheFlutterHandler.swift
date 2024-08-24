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
        
        if (call.method == RCacheFlutterMethod.Key.clear) {
            RCache.common.clear()
            result("Success clear")
            return
        }
    }
    
    internal class func credentials(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        
    }
    
    internal class func clear(result: @escaping FlutterResult) {
        
    }
}
