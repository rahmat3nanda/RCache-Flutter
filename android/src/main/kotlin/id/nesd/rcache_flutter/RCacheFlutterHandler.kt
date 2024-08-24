package id.nesd.rcache_flutter

import id.nesd.rcache.RCache
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel.Result

internal object RCacheFlutterHandler {

    fun common(call: MethodCall, result: Result) {

        if (call.method == RCacheFlutterMethod.Key.clear) {
            RCache.common.clear()
            result.success("Success clear")
            return
        }

        val key = call.argument<String?>("key")

        if (key == null) {
            result.error("2", "RCache Key not defined", null)
            return
        }

        when (call.method) {
            RCacheFlutterMethod.Key.Save.data -> {
                val byteArray: ByteArray? = call.argument<ByteArray>("value")
                if (byteArray == null) {
                    result.error("3", "Invalid format", null)
                } else {
                    RCache.common.save(byteArray, RCache.Key(key))
                    result.success("Success saving")
                }
            }

            RCacheFlutterMethod.Key.Save.string -> {
                RCache.common.save(call.argument<String>("value")!!, RCache.Key(key))
                result.success("Success saving")
            }

            RCacheFlutterMethod.Key.Save.bool -> {
                RCache.common.save(call.argument<Boolean>("value")!!, RCache.Key(key))
                result.success("Success saving")
            }

            RCacheFlutterMethod.Key.Save.integer -> {
                RCache.common.save(call.argument<Int>("value")!!, RCache.Key(key))
                result.success("Success saving")
            }

            RCacheFlutterMethod.Key.Save.array -> {
                RCache.common.save(call.argument<List<Any>>("value")!!, RCache.Key(key))
                result.success("Success saving")
            }

            RCacheFlutterMethod.Key.Save.dictionary -> {
                RCache.common.save(call.argument<Map<String, Any>>("value")!!, RCache.Key(key))
                result.success("Success saving")
            }

            RCacheFlutterMethod.Key.Save.double -> {
                RCache.common.save(call.argument<Double>("value")!!, RCache.Key(key))
                result.success("Success saving")
            }

            RCacheFlutterMethod.Key.Read.data -> {
                result.success(RCache.common.readData(RCache.Key(key)))
            }

            RCacheFlutterMethod.Key.Read.string -> {
                result.success(RCache.common.readString(RCache.Key(key)))
            }

            RCacheFlutterMethod.Key.Read.bool -> {
                result.success(RCache.common.readBool(RCache.Key(key)))
            }

            RCacheFlutterMethod.Key.Read.integer -> {
                result.success(RCache.common.readInteger(RCache.Key(key)))
            }

            RCacheFlutterMethod.Key.Read.array -> {
                result.success(RCache.common.readArray(RCache.Key(key)))
            }

            RCacheFlutterMethod.Key.Read.dictionary -> {
                result.success(RCache.common.readDictionary(RCache.Key(key)))
            }

            RCacheFlutterMethod.Key.Read.double -> {
                result.success(RCache.common.readDouble(RCache.Key(key)))
            }

            RCacheFlutterMethod.Key.remove -> {
                RCache.common.remove(RCache.Key(key))
                result.success("Success remove")
            }

            else -> {
                result.notImplemented()
            }
        }
    }

    fun credentials(call: MethodCall, result: Result) {

        if (call.method == RCacheFlutterMethod.Key.clear) {
            RCache.credentials.clear()
            result.success("Success clear")
            return
        }

        val key = call.argument<String?>("key")

        if (key == null) {
            result.error("2", "RCache Key not defined", null)
            return
        }

        when (call.method) {
            RCacheFlutterMethod.Key.Save.data -> {
                val byteArray: ByteArray? = call.argument<ByteArray>("value")
                if (byteArray == null) {
                    result.error("3", "Invalid format", null)
                } else {
                    RCache.credentials.save(byteArray, RCache.Key(key))
                    result.success("Success saving")
                }
            }

            RCacheFlutterMethod.Key.Save.string -> {
                RCache.credentials.save(call.argument<String>("value")!!, RCache.Key(key))
                result.success("Success saving")
            }

            RCacheFlutterMethod.Key.Save.bool -> {
                RCache.credentials.save(call.argument<Boolean>("value")!!, RCache.Key(key))
                result.success("Success saving")
            }

            RCacheFlutterMethod.Key.Save.integer -> {
                RCache.credentials.save(call.argument<Int>("value")!!, RCache.Key(key))
                result.success("Success saving")
            }

            RCacheFlutterMethod.Key.Save.array -> {
                RCache.credentials.save(call.argument<List<Any>>("value")!!, RCache.Key(key))
                result.success("Success saving")
            }

            RCacheFlutterMethod.Key.Save.dictionary -> {
                RCache.credentials.save(call.argument<Map<String, Any>>("value")!!, RCache.Key(key))
                result.success("Success saving")
            }

            RCacheFlutterMethod.Key.Save.double -> {
                RCache.credentials.save(call.argument<Double>("value")!!, RCache.Key(key))
                result.success("Success saving")
            }

            RCacheFlutterMethod.Key.Read.data -> {
                result.success(RCache.credentials.readData(RCache.Key(key)))
            }

            RCacheFlutterMethod.Key.Read.string -> {
                result.success(RCache.credentials.readString(RCache.Key(key)))
            }

            RCacheFlutterMethod.Key.Read.bool -> {
                result.success(RCache.credentials.readBool(RCache.Key(key)))
            }

            RCacheFlutterMethod.Key.Read.integer -> {
                result.success(RCache.credentials.readInteger(RCache.Key(key)))
            }

            RCacheFlutterMethod.Key.Read.array -> {
                result.success(RCache.credentials.readArray(RCache.Key(key)))
            }

            RCacheFlutterMethod.Key.Read.dictionary -> {
                result.success(RCache.credentials.readDictionary(RCache.Key(key)))
            }

            RCacheFlutterMethod.Key.Read.double -> {
                result.success(RCache.credentials.readDouble(RCache.Key(key)))
            }

            RCacheFlutterMethod.Key.remove -> {
                RCache.credentials.remove(RCache.Key(key))
                result.success("Success remove")
            }

            else -> {
                result.notImplemented()
            }
        }
    }

    fun clear(result: Result) {
        RCache.clear()
        result.success("Success clear")
    }
}