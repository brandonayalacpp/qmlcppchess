#ifndef PIECEMODEL_H
#define PIECEMODEL_H

#include <QObject>

class PieceModel : public QObject
{
    Q_OBJECT
public:
    explicit PieceModel(QObject *parent = nullptr);

signals:

private:
    QString mName;
    QString mSource;
    int mXPosition;
    int mYPosition;
};

#endif // PIECEMODEL_H
