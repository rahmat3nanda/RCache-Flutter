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
  String uint8List = "saveUint8List";
  String string = "saveString";
  String bool = "saveBool";
  String integer = "saveInteger";
  String array = "saveArray";
  String map = "saveMap";
  String double = "saveDouble";
}

class RCacheMethodKeyRead {
  String uint8List = "readUint8List";
  String string = "readString";
  String bool = "readBool";
  String integer = "readInteger";
  String array = "readArray";
  String map = "readMap";
  String double = "readDouble";
}
