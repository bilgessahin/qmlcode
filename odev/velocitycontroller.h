#ifndef VELOCITYCONTROLLER_H
#define VELOCITYCONTROLLER_H

#include <QObject>

class VelocityController : public QObject
{
    Q_OBJECT
public:
    explicit VelocityController(QObject *parent = nullptr);

    Q_INVOKABLE void setVelocity(int velocity);
    Q_INVOKABLE int velocity() const;

signals:
    void velocityChanged(int velocity);

private:
    int m_velocity{};

};

#endif // VELOCITYCONTROLLER_H
