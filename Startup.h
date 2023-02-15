#ifndef STARTUP_H
#define STARTUP_H

#include <QObject>


class QQmlApplicationEngine;
class MainViewManager;


class Startup : public QObject
{
public:
    explicit Startup(QObject *parent = nullptr);

signals:

private:
    QQmlApplicationEngine *mEngine;
    MainViewManager *mMainViewManager;

};

#endif // STARTUP_H
