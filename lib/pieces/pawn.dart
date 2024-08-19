import 'package:dart_chess_pieces/board/position.dart';
import 'chess_piece.dart';

class Pawn extends ChessPiece {
  Pawn(Position position) : super(position);

  @override
  List<Position> getPossiblePositions() {
    return [
      Position(position.x, position.y + 1),
      if (position.y == 2) Position(position.x, position.y + 2),
    ];
  }
}
