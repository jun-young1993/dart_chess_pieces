import 'package:dart_chess_pieces/board/position.dart';
import 'package:dart_chess_pieces/pieces/rook.dart';
import 'package:test/test.dart';

void main() {
  test('Rook moves correctly', () {
    final rook = Rook(Position(1, 1));
    final possiblePositions = rook.getPossiblePositions();

    expect(possiblePositions, contains(Position(1, 2)));
    expect(possiblePositions, contains(Position(1, 8)));
    expect(possiblePositions, contains(Position(2, 1)));
    expect(possiblePositions, contains(Position(8, 1)));
  });
}
