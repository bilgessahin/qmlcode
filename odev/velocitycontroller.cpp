#include "velocitycontroller.h"

VelocityController::VelocityController(QObject *parent) : QObject(parent)
{

}

void VelocityController::setVelocity(int velocity)
{
    m_velocity = velocity;
    emit velocityChanged(velocity);
}

int VelocityController::velocity() const
{
    return m_velocity;
}
