class RCacheMethod {
  static RCacheMethodKey key = RCacheMethodKey();
  static String channel = "id.nesd.rcache_flutter";
}

class RCacheMethodKey {
  RCacheMethodKeySave save = RCacheMethodKeySave();
  RCacheMethodKeyRead read = RCacheMethodKeyRead();
  String common = "common";
  String credentials = "credentials";
  String remove = "remove";
  String clear = "clear";
}

class RCacheMethodKeySave {
  String data = "saveData";
  String string = "saveString";
  String bool = "saveBool";
  String integer = "saveInteger";
  String array = "saveArray";
  String dictionary = "saveDictionary";
  String double = "saveDouble";
}

class RCacheMethodKeyRead {
  String data = "readData";
  String string = "readString";
  String bool = "readBool";
  String integer = "readInteger";
  String array = "readArray";
  String dictionary = "readDictionary";
  String double = "readDouble";
}
