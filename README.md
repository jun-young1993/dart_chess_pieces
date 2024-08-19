# dart_chess_pieces

`dart_chess_pieces` is a Dart library that models the movements of chess pieces in a chess game. This library is designed to calculate possible moves for each piece on the chessboard.

## Features

- **Position**: A class representing a position on the chessboard.
- **ChessPiece**: An abstract class that all chess pieces inherit from.
- **Rook**: A class representing the movement of the rook.
- **Knight**: A class representing the movement of the knight.
- **Bishop**: A class representing the movement of the bishop.
- **Queen**: A class representing the movement of the queen.
- **King**: A class representing the movement of the king.
- **Pawn**: A class representing the movement of the pawn.

## Installation

To use this library locally, add the following dependency to your Dart project's `pubspec.yaml` file:

```yaml
dependencies:
  dart_chess_pieces:
    path: /path/to/dart_chess_pieces
```

Then, get the dependencies:

```shell
dart pub get
```

# Usage
You can now use the library in your project. For example, to calculate the possible moves of a piece on the chessboard:

```dart
import 'package:dart_chess_pieces/dart_chess_pieces.dart';

void main() {
  // Create a position object
  var initialPosition = Position(1, 1);

  // Create a Rook object
  var rook = Rook(initialPosition);

  // Calculate possible positions
  var possiblePositions = rook.getPossiblePositions();

  // Print the results
  print('Rook can move to:');
  for (var pos in possiblePositions) {
    print(pos);
  }
}

```
This code example calculates and prints all possible moves for a rook at position (1, 1).

# Key Classes
#### 1. `Position`

The Position class represents a position on the chessboard. It is defined by x and y coordinates.

```dart
class Position {
  final int x;
  final int y;

  Position(this.x, this.y);
}

```

#### 2. `chessPiece`
`ChessPiece` is an abstract class that serves as the base for all chess pieces. Each piece has a position and a method to calculate possible moves.

```dart
abstract class ChessPiece {
  final Position position;

  ChessPiece(this.position);

  List<Position> getPossiblePositions();
}

```

#### 3. `Rook`
The rook can move vertically and horizontally.

```dart
class Rook extends ChessPiece {
  Rook(Position position) : super(position);

  @override
  List<Position> getPossiblePositions() {
    // Logic to calculate possible positions
  }
}
```
#### 4.`Knight`
The knight moves in an "L" shape.
```dart
class Knight extends ChessPiece {
  Knight(Position position) : super(position);

  @override
  List<Position> getPossiblePositions() {
    // Logic to calculate possible positions
  }
}

```

#### 5.`Bishop`
The bishop moves diagonally.
```dart
class Bishop extends ChessPiece {
  Bishop(Position position) : super(position);

  @override
  List<Position> getPossiblePositions() {
    // Logic to calculate possible positions
  }
}
```

6.`Queen`
The queen can move in any direction—vertically, horizontally, or diagonally.
```dart
class Queen extends ChessPiece {
  Queen(Position position) : super(position);

  @override
  List<Position> getPossiblePositions() {
    // Logic to calculate possible positions
  }
}

```
#### 7.`King`
The king can move one square in any direction.
```dart
class King extends ChessPiece {
  King(Position position) : super(position);

  @override
  List<Position> getPossiblePositions() {
    // Logic to calculate possible positions
  }
}
```

#### 8.`Pawn`
The pawn can move one square forward or two squares forward on its first move.
```dart
class Pawn extends ChessPiece {
  Pawn(Position position) : super(position);

  @override
  List<Position> getPossiblePositions() {
    // Logic to calculate possible positions
  }
}

```

# Testing
Tests for this library are located in the test directory. To run the tests, use the following command:
```bash
dart test
```