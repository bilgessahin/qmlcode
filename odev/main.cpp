#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "compasscontroller.h"
#include "velocitycontroller.h"


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    VelocityController velocityController;
    CompassController compasObject;

    engine.rootContext()->setContextProperty("velocityController", &velocityController);
    engine.rootContext()->setContextProperty("myCompassObject", &compasObject);

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
