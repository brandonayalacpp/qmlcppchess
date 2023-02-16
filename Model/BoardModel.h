#ifndef BOARDMODEL_H
#define BOARDMODEL_H

#include <QObject>

#include "common/Common.h"

using namespace Common;

namespace Model
{
    class BoardModel : public QObject
    {
    Q_OBJECT
    public:
        void setBoard(const std::vector<Piece> &pieces);
        void updateBoard(Piece piece);
        Piece retrievePiece(Position position);

    signals:
        void notifySetBoard(const std::vector<Piece> &pieces);
        void notifyUpdateBoard(Piece Piece);
    private:
        Piece mBoard[BOARD_SIZE][BOARD_SIZE];

    };
}


#endif // BOARDMODEL_H
