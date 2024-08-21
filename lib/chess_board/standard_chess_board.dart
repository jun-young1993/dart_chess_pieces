import 'package:dart_chess_pieces/board/position.dart';
import 'package:dart_chess_pieces/pieces/chess_piece.dart';
import 'package:dart_chess_pieces/pieces/knight.dart';
import 'package:dart_chess_pieces/pieces/pawn.dart';
import 'package:dart_chess_pieces/pieces/rook.dart';

class StandardChessBoard {
  // 8x8 체스판을 나타내는 2차원 배열
  final List<List<ChessPiece?>> board;

  StandardChessBoard()
      : board = [
          // 0번째 줄(백색 기물 배치)
          [Rook(Position(0, 0)), Knight(Position(0, 1)), Rook(Position(0, 2)), Knight(Position(0, 3)),
           Rook(Position(0, 4)), Knight(Position(0, 5)), Rook(Position(0, 6)), Knight(Position(0, 7))],
          // 1번째 줄(백색 폰 배치)
          [Pawn(Position(1, 0)), Pawn(Position(1, 1)), Pawn(Position(1, 2)), Pawn(Position(1, 3)),
           Pawn(Position(1, 4)), Pawn(Position(1, 5)), Pawn(Position(1, 6)), Pawn(Position(1, 7))],
          // 2번째 줄(빈 줄)
          [null, null, null, null, null, null, null, null],
          // 3번째 줄(빈 줄)
          [null, null, null, null, null, null, null, null],
          // 4번째 줄(빈 줄)
          [null, null, null, null, null, null, null, null],
          // 5번째 줄(빈 줄)
          [null, null, null, null, null, null, null, null],
          // 6번째 줄(흑색 폰 배치)
          [Pawn(Position(6, 0)), Pawn(Position(6, 1)), Pawn(Position(6, 2)), Pawn(Position(6, 3)),
           Pawn(Position(6, 4)), Pawn(Position(6, 5)), Pawn(Position(6, 6)), Pawn(Position(6, 7))],
          // 7번째 줄(흑색 기물 배치)
          [Rook(Position(7, 0)), Knight(Position(7, 1)), Rook(Position(7, 2)), Knight(Position(7, 3)),
           Rook(Position(7, 4)), Knight(Position(7, 5)), Rook(Position(7, 6)), Knight(Position(7, 7))],
        ];
}