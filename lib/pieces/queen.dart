import 'package:flutter/material.dart';
import 'package:dart_chess_pieces/board/position.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'chess_piece.dart';
import 'rook.dart';
import 'bishop.dart';

class Queen extends ChessPiece {
  Queen(super.position, {super.isWhite = false});

  @override
  List<Position> getPossiblePositions() {
    List<Position> positions = [];
    positions.addAll(Rook(position).getPossiblePositions());
    positions.addAll(Bishop(position).getPossiblePositions());
    return positions;
  }
  @override
  IconData getIcon() {
    return FontAwesomeIcons.chessQueen;
  }
}
