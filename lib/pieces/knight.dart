import 'package:dart_chess_pieces/board/position.dart';
import 'chess_piece.dart';

class Knight extends ChessPiece {
  Knight(super.position);

  @override
  List<Position> getPossiblePositions() {
    return [
      Position(position.x + 2, position.y + 1),
      Position(position.x + 2, position.y - 1),
      Position(position.x - 2, position.y + 1),
      Position(position.x - 2, position.y - 1),
      Position(position.x + 1, position.y + 2),
      Position(position.x + 1, position.y - 2),
      Position(position.x - 1, position.y + 2),
      Position(position.x - 1, position.y - 2),
    ].where((pos) => pos.x >= 1 && pos.x <= 8 && pos.y >= 1 && pos.y <= 8).toList();
  }
}
