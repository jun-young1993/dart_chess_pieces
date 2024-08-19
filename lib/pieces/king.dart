import 'package:dart_chess_pieces/board/position.dart';
import 'chess_piece.dart';

class King extends ChessPiece {
  King(Position position) : super(position);

  @override
  List<Position> getPossiblePositions() {
    return [
      Position(position.x + 1, position.y),
      Position(position.x - 1, position.y),
      Position(position.x, position.y + 1),
      Position(position.x, position.y - 1),
      Position(position.x + 1, position.y + 1),
      Position(position.x - 1, position.y - 1),
      Position(position.x + 1, position.y - 1),
      Position(position.x - 1, position.y + 1),
    ].where((pos) => pos.x >= 1 && pos.x <= 8 && pos.y >= 1 && pos.y <= 8).toList();
  }
}
