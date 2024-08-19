import 'package:dart_chess_pieces/board/position.dart';
import 'package:dart_chess_pieces/pieces/bishop.dart';
import 'package:test/test.dart';

void main() {
  test('Bishop moves correctly', () {
    final bishop = Bishop(Position(4, 4));
    final possiblePositions = bishop.getPossiblePositions();

    expect(possiblePositions, contains(Position(5, 5)));
    expect(possiblePositions, contains(Position(3, 3)));
    expect(possiblePositions, contains(Position(6, 6)));
    expect(possiblePositions, contains(Position(2, 2)));
    expect(possiblePositions, contains(Position(5, 3)));
    expect(possiblePositions, contains(Position(3, 5)));
  });
}
