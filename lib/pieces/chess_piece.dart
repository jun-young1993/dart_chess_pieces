import 'package:dart_chess_pieces/board/position.dart';
import 'package:flutter/material.dart';

abstract class ChessPiece {
  late Position position;
  final bool isWhite;

  ChessPiece(this.position, { this.isWhite = true } );

  List<Position> getPossiblePositions();

  bool isPossiblePosition(int x, int y) {
    final possiblePositions = getPossiblePositions();
    return possiblePositions.contains(Position(x, y));
  }

  ChessPiece move(Position movePosition){
    position = movePosition;
    return this;
  }

  IconData getIcon();

    @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChessPiece &&
          runtimeType == other.runtimeType &&
          position == other.position;

  @override
  int get hashCode => position.hashCode;
}
