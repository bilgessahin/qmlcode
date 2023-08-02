#include "compasscontroller.h"

CompassController::CompassController(QObject *parent) : QObject(parent)
{

}

void CompassController::setAngle(int angle)
{
    m_angle = angle;
}

int CompassController::angle() const
{
    return m_angle;
}
