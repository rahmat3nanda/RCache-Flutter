import 'dart:typed_data';

class RCacheValueModelTest {
  final Uint8List data;
  final String string;
  final bool boolValue;
  final int intValue;
  final List array;
  final Map<String, dynamic> dictionary;
  final double doubleValue;

  RCacheValueModelTest({
    required this.data,
    required this.string,
    required this.boolValue,
    required this.intValue,
    required this.array,
    required this.dictionary,
    required this.doubleValue,
  });
}
