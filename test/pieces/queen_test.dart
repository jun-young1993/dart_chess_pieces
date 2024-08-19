import 'package:dart_chess_pieces/board/position.dart';
import 'package:dart_chess_pieces/pieces/queen.dart';
import 'package:test/test.dart';

void main() {
  test('Queen moves correctly', () {
    final queen = Queen(Position(4, 4));
    final possiblePositions = queen.getPossiblePositions();

    expect(possiblePositions, contains(Position(4, 5)));  // Rook move
    expect(possiblePositions, contains(Position(5, 4)));  // Rook move
    expect(possiblePositions, contains(Position(5, 5)));  // Bishop move
    expect(possiblePositions, contains(Position(3, 3)));  // Bishop move
  });
}
