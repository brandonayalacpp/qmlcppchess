#include "Model/BoardModel.h"

using namespace Model;

void BoardModel::setBoard(const std::vector<Piece> &pieces)
{
    int row;
    int col;
    for(int i = 0; i < pieces.size(); ++i)
    {
        row = pieces[i].position.row;
        col = pieces[i].position.col;

        mBoard[row][col] = pieces[i];
    }

    emit notifySetBoard(pieces);
}
Piece BoardModel::retrievePiece(Position position)
{
    return mBoard[position.row][position.col];
}

void BoardModel::updateBoard(Piece piece)
{
    int row = piece.position.row;
    int col = piece.position.col;

    mBoard[row][col] = piece;

    emit notifyUpdateBoard(piece);
}




