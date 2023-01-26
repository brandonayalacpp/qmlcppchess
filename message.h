#ifndef MESSAGE_H
#define MESSAGE_H

#include <QObject>
#include <QString>

class Message : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString message READ message WRITE setMessage NOTIFY messageChanged)
public slots:
    void doMessageChange();
signals:
    void messageChanged();
public:
    explicit Message(QObject *parent = nullptr);
    QString message() const {return m_message;}
    void setMessage(QString value);
    Q_INVOKABLE int sendMessageFromCpp(const QString value);

private:
    QString m_message;
    int m_counter;

};

#endif // MESSAGE_H
