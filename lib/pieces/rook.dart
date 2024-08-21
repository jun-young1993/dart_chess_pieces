import 'package:flutter/material.dart';
import 'package:dart_chess_pieces/board/position.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'chess_piece.dart';

class Rook extends ChessPiece {
  Rook(super.position, {super.isWhite = false});

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

    @override
  IconData getIcon() {
    return FontAwesomeIcons.chessRook;
  }
}
