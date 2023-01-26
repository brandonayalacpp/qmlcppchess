#include "message.h"

#include <QDebug>

using namespace std;
void Message::doMessageChange()
{
//    ++m_counter;
//    messageChange(m_message.arg(m_counter));
    setMessage("hello world %1");
}

Message::Message(QObject *parent)
    : QObject{parent},
      m_message("Startup message"),
      m_counter(0)

{

}

void Message::setMessage(QString value)
{
    m_message = value.arg(++m_counter);
    emit messageChanged();
}

int Message::sendMessageFromCpp(const QString value)
{
    qDebug()<<"Some message: " << value;

    return m_counter;
}
