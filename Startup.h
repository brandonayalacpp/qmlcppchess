#ifndef STARTUP_H
#define STARTUP_H

#include <QObject>



class QQmlApplicationEngine;
class MainViewManager;

namespace Model
{
    class BoardModel;
}


class Startup : public QObject
{
public:
    explicit Startup(QObject *parent = nullptr);

signals:

private:
    QQmlApplicationEngine *mEngine;
    MainViewManager *mMainViewManager;
    Model::BoardModel *mBoardModel;

};

#endif // STARTUP_H
