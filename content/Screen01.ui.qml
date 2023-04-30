

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import UntitledProject1

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#ffffff"

    Rectangle {
        id: backgroundHolder
        color: "#ffffff"
        anchors.fill: parent

        Image {
            id: background
            x: 0
            y: 0
            width: 1920
            height: 1080
            source: "images/melee.jpg"
            fillMode: Image.PreserveAspectFit
        }
    }

    Rectangle {
        id: logo
        width: 1294
        height: 242
        opacity: 1
        color: "#00ffffff"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 313
        anchors.topMargin: 36
        clip: true

        Image {
            id: mainLogo
            x: 112
            y: 34
            width: 1087
            height: 190
            source: "images/logo.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    Rectangle {
        id: newsScrollArea
        width: 1500
        height: 600
        color: "#a9000000"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.leftMargin: 217
        anchors.topMargin: 284

        ScrollView {
            id: scrollView
            anchors.fill: parent
            padding: 10

            ListView {
                id: listView
                anchors.fill: parent
                orientation: ListView.Horizontal
                clip: true
                flickableDirection: Flickable.HorizontalFlick
                model: ListModel {
                    ListElement {
                        headlineData: "Grey"
                        articleData: "grey"
                    }

                    ListElement {
                        headlineData: "Red"
                        articleData: "red"
                    }

                    ListElement {
                        headlineData: "Blue"
                        articleData: "blue"
                    }

                    ListElement {
                        headlineData: "Green"
                        articleData: "green"
                    }
                }
                delegate: Item {
                    x: 5
                    width: 500
                    height: parent.height
                    Row {
                        id: row1
                        NewsArticle {
                            width: 500
                            headline: headlineData
                            article: articleData
                        }
                        spacing: 300
                    }
                }
            }
        }
    }

    Rectangle {
        id: userControls
        width: 1160
        height: 200
        color: "#00ffffff"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 380
        anchors.topMargin: 872

        property bool hasUpdate: false

        Button {
            id: startButton
            x: 432
            y: 63
            width: 302
            height: 95
            visible: true
            text: qsTr(!hasUpdate ? "Start" : "Update")
            property color backgroundPressedColor: "#af0303"
            flat: false
            layer.enabled: true
            property color backgroundDefaultColor: "#4E5BF2"
            property bool hasUpdate: parent.hasUpdate
            background: Rectangle {
                implicitWidth: 300
                implicitHeight: 95
                color: root.down ? backgroundPressedColor : backgroundDefaultColor
            }
            font.pointSize: 14
            display: AbstractButton.TextOnly
        }
    }
}
