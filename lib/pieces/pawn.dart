import 'package:flutter/material.dart';
import 'package:dart_chess_pieces/board/position.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'chess_piece.dart';

class Pawn extends ChessPiece {
  Pawn(super.position,{super.isWhite = false});

  @override
  List<Position> getPossiblePositions() {
    return [
      Position(position.x, position.y + 1),
      if (position.y == 2) Position(position.x, position.y + 2),
    ];
  }

    @override
  IconData getIcon() {
    return FontAwesomeIcons.chessPawn;
  }
}
