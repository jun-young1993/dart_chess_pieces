import 'package:dart_chess_pieces/board/position.dart';
import 'package:dart_chess_pieces/pieces/king.dart';
import 'package:test/test.dart';

void main() {
  test('King moves correctly', () {
    final king = King(Position(4, 4));
    final possiblePositions = king.getPossiblePositions();

    expect(possiblePositions, contains(Position(5, 4)));
    expect(possiblePositions, contains(Position(3, 4)));
    expect(possiblePositions, contains(Position(4, 5)));
    expect(possiblePositions, contains(Position(4, 3)));
    expect(possiblePositions, contains(Position(5, 5)));
    expect(possiblePositions, contains(Position(3, 3)));
    expect(possiblePositions, contains(Position(5, 3)));
    expect(possiblePositions, contains(Position(3, 5)));
  });
}
