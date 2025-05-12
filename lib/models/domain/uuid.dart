import 'package:collection/collection.dart' show ListEquality;
import 'package:convert/convert.dart' show hex;
import 'package:uuid/uuid.dart' as guid;

const uid = guid.Uuid();

class Uuid {
  final List<int> _bytes;
  final int _hashCode;

  Uuid._internal(List<int> bytes)
    : _bytes = bytes,
      _hashCode = _calcHashCode(bytes);

  Uuid(String input) : this._internal(_fromString(input));

  Uuid.fromMac(String input) : this._internal(_fromMacString(input));

  Uuid.empty() : this._internal(List.filled(16, 0));

  Uuid.v4() : this._internal(_fromString(uid.v4()));

  static List<int> _fromMacString(String input) {
    input = _removeNonHexCharacters(input);
    final bytes = hex.decode(input);

    if (bytes.length != 6) {
      throw FormatException('The format is invalid: $input');
    }

    return bytes + List<int>.filled(10, 0);
  }

  static List<int> _fromString(String input) {
    input = _removeNonHexCharacters(input);
    final bytes = hex.decode(input);

    if (bytes.length != 16) {
      throw const FormatException('The format is invalid');
    }

    return bytes;
  }

  static String _removeNonHexCharacters(String sourceString) {
    return String.fromCharCodes(
      sourceString.runes.where(
        (r) =>
            (r >= 48 && r <= 57) // characters 0 to 9
            ||
            (r >= 65 && r <= 70) // characters A to F
            ||
            (r >= 97 && r <= 102), // characters a to f
      ),
    );
  }

  static int _calcHashCode(List<int> bytes) {
    const equality = ListEquality<int>();
    return equality.hash(bytes);
  }

  @override
  String toString() {
    var one = hex.encode(_bytes.sublist(0, 4));
    var two = hex.encode(_bytes.sublist(4, 6));
    var three = hex.encode(_bytes.sublist(6, 8));
    var four = hex.encode(_bytes.sublist(8, 10));
    var five = hex.encode(_bytes.sublist(10, 16));
    return '$one-$two-$three-$four-$five';
  }

  String toMac() {
    var one = hex.encode(_bytes.sublist(0, 1));
    var two = hex.encode(_bytes.sublist(1, 2));
    var three = hex.encode(_bytes.sublist(2, 3));
    var four = hex.encode(_bytes.sublist(3, 4));
    var five = hex.encode(_bytes.sublist(4, 5));
    var six = hex.encode(_bytes.sublist(5, 6));
    return '$one:$two:$three:$four:$five:$six'.toUpperCase();
  }

  List<int> toByteArray() {
    return _bytes;
  }

  factory Uuid.fromJson(String json) => Uuid(json);

  String toJson() => toString();

  @override
  bool operator ==(other) => other is Uuid && hashCode == other.hashCode;

  @override
  int get hashCode => _hashCode;
}
