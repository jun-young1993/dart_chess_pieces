import 'package:dart_chess_pieces/board/position.dart';
import 'package:flutter/material.dart';

abstract class ChessPiece {
  final Position position;
  final bool isWhite;

  ChessPiece(this.position, { this.isWhite = true } );

  List<Position> getPossiblePositions();

  IconData getIcon();
}
