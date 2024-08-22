import 'package:dart_chess_pieces/board/position.dart';
import 'package:dart_chess_pieces/pieces/pawn.dart';
import 'package:test/test.dart';

void main() {
  test('Pawn moves correctly', () {
    final pawn = Pawn(Position(1, 2));
    final possiblePositions = pawn.getPossiblePositions();

    expect(possiblePositions, contains(Position(1, 3)));
    expect(possiblePositions, contains(Position(1, 4)));

    expect(pawn.isPossiblePosition(1, 3),isTrue);
    expect(pawn.isPossiblePosition(1, 4),isTrue);
    expect(pawn.isPossiblePosition(1, 5),isFalse);
  });
}
