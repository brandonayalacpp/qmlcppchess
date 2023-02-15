#ifndef MAINVIEWMANAGER_H
#define MAINVIEWMANAGER_H

#include <QObject>
#include <QString>

class MainViewManager : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString appName READ appName CONSTANT)

public:
    explicit MainViewManager(QObject *parent = nullptr);
    QString appName() const { return mAppName; }

signals:

private:
    QString mAppName;


};

#endif // MAINVIEWMANAGER_H
