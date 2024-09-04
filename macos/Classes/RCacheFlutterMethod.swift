//
//  RCacheFlutterMethod.swift
//  rcache_flutter
//
//  Created by Rahmat Trinanda Pramudya Amar on 24/08/24.
//

import Foundation

internal enum RCacheFlutterMethod: String {
    case channel = "id.nesd.rcache_flutter"
    
    internal enum Key: String {
        case common = "common"
        case credentials = "credentials"
        case remove = "remove"
        case clear = "clear"
        
        internal enum Save: String {
            case uint8List = "saveUint8List"
            case string = "saveString"
            case bool = "saveBool"
            case integer = "saveInteger"
            case array = "saveArray"
            case map = "saveMap"
            case double = "saveDouble"
            
        }
        
        internal enum Read: String {
            case uint8List = "readUint8List"
            case string = "readString"
            case bool = "readBool"
            case integer = "readInteger"
            case array = "readArray"
            case map = "readMap"
            case double = "readDouble"
        }
    }
}
