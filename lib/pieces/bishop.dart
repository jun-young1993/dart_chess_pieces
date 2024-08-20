import 'package:flutter/material.dart';
import 'package:dart_chess_pieces/board/position.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'chess_piece.dart';

class Bishop extends ChessPiece {
  Bishop(super.position);

  @override
  List<Position> getPossiblePositions() {
    List<Position> positions = [];

    for (int i = 1; i <= 8; i++) {
      if (i != 0) {
        positions.add(Position(position.x + i, position.y + i));
        positions.add(Position(position.x - i, position.y - i));
        positions.add(Position(position.x + i, position.y - i));
        positions.add(Position(position.x - i, position.y + i));
      }
    }

    return positions.where((pos) => pos.x >= 1 && pos.x <= 8 && pos.y >= 1 && pos.y <= 8).toList();
  }

  @override
  IconData getIcon() {
    return FontAwesomeIcons.chessBishop;
  }
}
