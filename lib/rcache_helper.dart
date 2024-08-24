import 'package:rcache_flutter/rcache_key.dart';

Map<String, dynamic> rArgs({
  required String type,
  RCacheKey? key,
  dynamic value,
}) {
  Map<String, dynamic> args = {};
  args["type"] = type;
  if (key != null) {
    args["key"] = key.rawValue;
  }
  if (value != null) {
    args["value"] = value;
  }

  return args;
}

dynamic rAutoCast(dynamic value) {
  if (value is String) {
    // Attempt to cast to int
    final intValue = int.tryParse(value);
    if (intValue != null) return intValue;

    // Attempt to cast to double
    final doubleValue = double.tryParse(value);
    if (doubleValue != null) return doubleValue;

    // Attempt to cast to bool
    if (value.toLowerCase() == 'true') return true;
    if (value.toLowerCase() == 'false') return false;
  }
  // If no casting is applicable, return the original element
  return value;
}

List<dynamic> rAutoCastList(List<dynamic> source) {
  return source.map((element) {
    if (element is String) {
      return rAutoCast(element);
    }
  }).toList();
}

Map<String, dynamic> rAutoCastMap(Map<String, dynamic> source) {
  return source.map((key, value) {
    if (value is String) {
      return MapEntry(key, rAutoCast(value));
    } else if (value is List) {
      return MapEntry(key, rAutoCastList(value));
    } else if (value is Map<String, dynamic>) {
      return MapEntry(key, rAutoCastMap(value));
    } else {
      return MapEntry(key, value);
    }
  });
}
