import 'package:dart_chess_pieces/board/position.dart';
import 'package:flutter/material.dart';

abstract class ChessPiece {
  final Position position;

  ChessPiece(this.position);

  List<Position> getPossiblePositions();

  IconData getIcon();
}
