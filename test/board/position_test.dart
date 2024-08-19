import 'package:dart_chess_pieces/board/position.dart';
import 'package:test/test.dart';

void main() {
  test('Position equality works correctly', () {
    final pos1 = Position(1, 2);
    final pos2 = Position(1, 2);
    final pos3 = Position(2, 3);

    expect(pos1 == pos2, isTrue);
    expect(pos1 == pos3, isFalse);
  });
}
