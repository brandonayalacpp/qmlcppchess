#include "Startup.h"

#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "ViewManager/MainViewManager.h"
#include "Model/BoardModel.h"




Startup::Startup(QObject *parent)
    : QObject{parent},
      mEngine(new QQmlApplicationEngine),
      mMainViewManager(new MainViewManager),
      mBoardModel(new Model::BoardModel)
{
    auto root_context = mEngine->rootContext();
    root_context->setContextProperty("MainViewManager", mMainViewManager);
    mEngine->load(QUrl(QStringLiteral("qrc:/main.qml")));

}
