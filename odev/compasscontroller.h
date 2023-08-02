#ifndef COMPASSCONTROLLER_H
#define COMPASSCONTROLLER_H

#include <QObject>

class CompassController : public QObject
{
    Q_OBJECT
public:
    explicit CompassController(QObject *parent = nullptr);

    void setAngle(int angle);
    Q_INVOKABLE int angle() const;

private:
    int m_angle{};

signals:

};

#endif // COMPASSCONTROLLER_H
