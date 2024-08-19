import 'package:dart_chess_pieces/board/position.dart';

abstract class ChessPiece {
  final Position position;

  ChessPiece(this.position);

  List<Position> getPossiblePositions();
}
