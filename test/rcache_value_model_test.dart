import 'dart:typed_data';

class RCacheValueModelTest {
  final Uint8List uint8List;
  final String string;
  final bool boolValue;
  final int intValue;
  final List array;
  final Map<String, dynamic> map;
  final double doubleValue;

  RCacheValueModelTest({
    required this.uint8List,
    required this.string,
    required this.boolValue,
    required this.intValue,
    required this.array,
    required this.map,
    required this.doubleValue,
  });
}
