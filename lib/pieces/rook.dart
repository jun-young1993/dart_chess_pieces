import 'package:dart_chess_pieces/board/position.dart';
import 'chess_piece.dart';

class Rook extends ChessPiece {
  Rook(Position position) : super(position);

  @override
  List<Position> getPossiblePositions() {
    List<Position> positions = [];

    for (int i = 1; i <= 8; i++) {
      if (i != position.x) {
        positions.add(Position(i, position.y));
      }
      if (i != position.y) {
        positions.add(Position(position.x, i));
      }
    }

    return positions;
  }
}
