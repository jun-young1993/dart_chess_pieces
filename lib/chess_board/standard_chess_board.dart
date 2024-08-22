import 'package:dart_chess_pieces/board/position.dart';
import 'package:dart_chess_pieces/pieces/chess_piece.dart';
import 'package:dart_chess_pieces/pieces/knight.dart';
import 'package:dart_chess_pieces/pieces/pawn.dart';
import 'package:dart_chess_pieces/pieces/rook.dart';

class StandardChessBoard {
  // 8x8 체스판을 나타내는 2차원 배열
  final List<List<ChessPiece?>> board;
  ChessPiece? selected;
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
          [Pawn(Position(6, 0),isWhite: true), Pawn(Position(6, 1),isWhite: true), Pawn(Position(6, 2),isWhite: true), Pawn(Position(6, 3),isWhite: true),
           Pawn(Position(6, 4),isWhite: true), Pawn(Position(6, 5),isWhite: true), Pawn(Position(6, 6),isWhite: true), Pawn(Position(6, 7),isWhite: true)],
          // 7번째 줄(흑색 기물 배치)
          [Rook(Position(7, 0),isWhite: true), Knight(Position(7, 1),isWhite: true), Rook(Position(7, 2),isWhite: true), Knight(Position(7, 3),isWhite: true),
           Rook(Position(7, 4),isWhite: true), Knight(Position(7, 5),isWhite: true), Rook(Position(7, 6),isWhite: true), Knight(Position(7, 7),isWhite: true)],
      ];

  // 특정 위치(row, col)의 기물 반환
  ChessPiece? getPiece(int rowIndex, int colIndex) {
    if (rowIndex < 0 || rowIndex >= board.length) {
      throw RangeError.index(rowIndex, board, 'rowIndex', 'Index out of range', board.length);
    }
    if (colIndex < 0 || colIndex >= board[rowIndex].length) {
      throw RangeError.index(colIndex, board[rowIndex], 'colIndex', 'Index out of range', board[rowIndex].length);
    }
    return board[rowIndex][colIndex];
  }

  void select(int row, int col){
    selected = board[row][col];
  }

  void unSelect(){
    selected = null;
  }

  void move(Position movePosition){
    if(isSelected()){
      
      board[selected!.position.x][selected!.position.y]  = null;
      board[movePosition.x][movePosition.y] = selected!.move(movePosition);
      
    }
  }

  bool isSelected(){
    return selected == null ? false : true;
  }

  bool isSameAsPosition(int row, int col){
    if(!isSelected()){
      return false;
    }
    return selected!.position!.isSameAs(row, col);
  }

  bool isPossiblePosition(int row, int col){
    
    if(!isSelected()){
      return false;
    }

    return selected!.isPossiblePosition(row, col);
  }
}