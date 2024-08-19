import 'package:dart_chess_pieces/board/position.dart';
import 'chess_piece.dart';
import 'rook.dart';
import 'bishop.dart';

class Queen extends ChessPiece {
  Queen(super.position);

  @override
  List<Position> getPossiblePositions() {
    List<Position> positions = [];
    positions.addAll(Rook(position).getPossiblePositions());
    positions.addAll(Bishop(position).getPossiblePositions());
    return positions;
  }
}
