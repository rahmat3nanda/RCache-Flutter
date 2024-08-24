package id.nesd.rcache_flutter

import id.nesd.rcache.RCache
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** RCacheFlutterPlugin */
class RCacheFlutterPlugin : FlutterPlugin, MethodCallHandler {
    //// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private lateinit var channel: MethodChannel

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        RCache.initialize(flutterPluginBinding.applicationContext)
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, RCacheFlutterMethod.channel)
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        val type = call.argument<String?>("type")

        when (type) {
            RCacheFlutterMethod.Key.common -> {
                RCacheFlutterHandler.common(call, result)
            }

            RCacheFlutterMethod.Key.credentials -> {
                RCacheFlutterHandler.credentials(call, result)
            }

            RCacheFlutterMethod.Key.clear -> {
                RCacheFlutterHandler.clear(result)
            }

            else -> {
                result.error("1", "Type not Defined", null)
            }
        }
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }
}
