#ifndef COMMON_H
#define COMMON_H

#include <string>

namespace Common
{
    enum PieceName
    {
        PN_EMPTY,
        PN_PAWN,
    };

    enum ColorPiece
    {
        CP_WHITE,
        CP_BLACK
    };

    struct Position
    {
        int row;
        int col;
    };

    struct Piece
    {
        PieceName pieceName;
        std::string pieceString;
        Position position;
        ColorPiece colorPiece;
        std::string pieceStyle;
    };


}

#define BOARD_SIZE 8
#define INDEX_LEFT_EDGE 0
#define INDEX_RIGHT_EDGE 9
#define INDEX_TOP_EDGE 0
#define INDEX_BOTTOM_EDGE 9
#define CELL_SIZE 90
#define PIECE_SIZE 70

#endif // COMMON_H
