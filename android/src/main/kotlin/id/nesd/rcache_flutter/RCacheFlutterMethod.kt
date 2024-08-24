package id.nesd.rcache_flutter

internal class RCacheFlutterMethod {

    companion object {
        const val channel: String = "id.nesd.rcache"
    }

    class Key {

        companion object {
            const val common: String = "common"
            const val credentials: String = "credentials"
            const val remove: String = "remove"
            const val clear: String = "clear"
        }

        class Save {
            companion object {
                const val data: String = "saveData"
                const val string: String = "saveString"
                const val bool: String = "saveBool"
                const val integer: String = "saveInteger"
                const val array: String = "saveArray"
                const val dictionary: String = "saveDictionary"
                const val double: String = "saveDouble"
            }
        }

        class Read {
            companion object {
                const val data: String = "readData"
                const val string: String = "readString"
                const val bool: String = "readBool"
                const val integer: String = "readInteger"
                const val array: String = "readArray"
                const val dictionary: String = "readDictionary"
                const val double: String = "readDouble"
            }
        }
    }
}