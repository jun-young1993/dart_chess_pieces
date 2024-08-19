import 'package:dart_chess_pieces/board/position.dart';
import 'package:dart_chess_pieces/pieces/knight.dart';
import 'package:test/test.dart';

void main() {
  test('Knight moves correctly', () {
    final knight = Knight(Position(4, 4));
    final possiblePositions = knight.getPossiblePositions();

    expect(possiblePositions, contains(Position(6, 5)));
    expect(possiblePositions, contains(Position(6, 3)));
    expect(possiblePositions, contains(Position(2, 5)));
    expect(possiblePositions, contains(Position(2, 3)));
    expect(possiblePositions, contains(Position(5, 6)));
    expect(possiblePositions, contains(Position(5, 2)));
    expect(possiblePositions, contains(Position(3, 6)));
    expect(possiblePositions, contains(Position(3, 2)));
  });
}
