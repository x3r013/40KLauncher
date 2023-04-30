import QtQuick 2.15
import QtQuick.Controls 2.15

PaddedRectangle {
    id: newsArticle
    width: 500
    height: 600
    color: "#00ffffff"
    border.color: "#ffffff"
    clip: true
    padding: 10

    property string headline: "Some Article"
    property string article: "some text about an article that is long"

    Text {
        text: parent.headline
        width: parent.width
        color: "#ffffff"
        anchors.verticalCenter: parent.horizontalCenter
        anchors.left: parent.left
        anchors.top: parent.top
        wrapMode: Text.WordWrap
        anchors.topMargin: parent.padding * 2
        anchors.leftMargin: parent.padding * 2
        font.bold: true
        font.pixelSize: 16
    }

    Text {
        color: "#ffffff"
        text: parent.article
        anchors.left: parent.left
        anchors.top: parent.top
        wrapMode: Text.WordWrap
        anchors.leftMargin: parent.padding * 2
        anchors.topMargin: 100
        font.bold: false
        font.pixelSize: 12
    }


}
