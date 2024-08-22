import 'package:flutter/material.dart';
import 'package:dart_chess_pieces/board/position.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'chess_piece.dart';

class Pawn extends ChessPiece {
  Pawn(super.position,{super.isWhite = false});

  @override
  List<Position> getPossiblePositions() {
    return [
      Position(position.x + (isWhite ? -1 : 1), position.y),
      if (position.x == 1 || position.x == 6) Position(position.x + (isWhite ? -2 : 2), position.y),
    ];
  }

    @override
  IconData getIcon() {
    return FontAwesomeIcons.chessPawn;
  }
}
