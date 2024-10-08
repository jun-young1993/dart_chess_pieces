import 'package:flutter/material.dart';
import 'package:dart_chess_pieces/board/position.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'chess_piece.dart';

class King extends ChessPiece {
  King(super.position, {super.isWhite = false});

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

    @override
  IconData getIcon() {
    return FontAwesomeIcons.chessKing;
  }
}
