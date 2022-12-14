/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import SneedGUI
import QtQuick.Layouts 1.0

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    Button {
        id: button
        text: qsTr("Press me")
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -74
        anchors.horizontalCenterOffset: -470
        checkable: true
        anchors.horizontalCenter: parent.horizontalCenter

        Connections {
            target: button
            onClicked: animation.start()
        }
    }

    Text {
        id: label
        text: qsTr("Hello SneedGUI")
        anchors.top: button.bottom
        anchors.horizontalCenterOffset: -476
        font.family: Constants.font.family
        anchors.topMargin: 75
        anchors.horizontalCenter: parent.horizontalCenter

        SequentialAnimation {
            id: animation

            ColorAnimation {
                id: colorAnimation1
                target: rectangle
                property: "color"
                to: "#2294c6"
                from: Constants.backgroundColor
            }

            ColorAnimation {
                id: colorAnimation2
                target: rectangle
                property: "color"
                to: Constants.backgroundColor
                from: "#2294c6"
            }
        }
    }

    ColumnLayout {
        x: 860
        y: 156
        Image {
            id: image
            source: "../lonlon.png"
            Layout.preferredWidth: 668
            sourceSize.width: 640
            sourceSize.height: 480
            fillMode: Image.PreserveAspectFit
            Layout.preferredHeight: 548
        }

        RowLayout {
            ColumnLayout {
                Layout.preferredWidth: 84
                Text {
                    id: text1
                    text: qsTr("Node 1")
                    font.pixelSize: 22
                    Layout.preferredWidth: 130
                    Layout.preferredHeight: 32
                }

                Text {
                    id: text2
                    text: qsTr("Node 2")
                    font.pixelSize: 22
                    Layout.preferredWidth: 130
                    Layout.preferredHeight: 32
                }

                Text {
                    id: text3
                    text: qsTr("Node 3")
                    font.pixelSize: 22
                    Layout.preferredWidth: 130
                    Layout.preferredHeight: 32
                }

                Text {
                    id: text4
                    text: qsTr("Node 4")
                    font.pixelSize: 22
                    Layout.preferredWidth: 130
                    Layout.preferredHeight: 32
                }

                Text {
                    id: text5
                    text: qsTr("Node 5")
                    font.pixelSize: 22
                    Layout.preferredWidth: 130
                    Layout.preferredHeight: 32
                }

                Text {
                    id: text6
                    text: qsTr("Node 6")
                    font.pixelSize: 22
                    Layout.preferredWidth: 130
                    Layout.preferredHeight: 32
                }
                Layout.preferredHeight: 240
            }

            ColumnLayout {
                Layout.preferredWidth: 335
                Text {
                    id: text7
                    text: qsTr("Last Updated MM/DD/YY HH:MM")
                    font.pixelSize: 22
                    Layout.preferredWidth: 130
                    Layout.preferredHeight: 32
                }

                Text {
                    id: text8
                    text: qsTr("Last Updated MM/DD/YY HH:MM")
                    font.pixelSize: 22
                    Layout.preferredWidth: 130
                    Layout.preferredHeight: 32
                }

                Text {
                    id: text9
                    text: qsTr("Last Updated MM/DD/YY HH:MM")
                    font.pixelSize: 22
                    Layout.preferredWidth: 130
                    Layout.preferredHeight: 32
                }

                Text {
                    id: text10
                    text: qsTr("Last Updated MM/DD/YY HH:MM")
                    font.pixelSize: 22
                    Layout.preferredWidth: 130
                    Layout.preferredHeight: 32
                }

                Text {
                    id: text11
                    text: qsTr("Last Updated MM/DD/YY HH:MM")
                    font.pixelSize: 22
                    Layout.preferredWidth: 130
                    Layout.preferredHeight: 32
                }

                Text {
                    id: text12
                    text: qsTr("Last Updated MM/DD/YY HH:MM")
                    font.pixelSize: 22
                    Layout.preferredWidth: 130
                    Layout.preferredHeight: 32
                }
                Layout.preferredHeight: 240
            }

            ColumnLayout {
                Layout.preferredWidth: 126
                Text {
                    id: text13
                    text: qsTr("Battery: 0%")
                    font.pixelSize: 22
                    Layout.preferredWidth: 130
                    Layout.preferredHeight: 32
                }

                Text {
                    id: text14
                    text: qsTr("Battery: 0%")
                    font.pixelSize: 22
                    Layout.preferredWidth: 130
                    Layout.preferredHeight: 32
                }

                Text {
                    id: text15
                    text: qsTr("Battery: 0%")
                    font.pixelSize: 22
                    Layout.preferredWidth: 130
                    Layout.preferredHeight: 32
                }

                Text {
                    id: text16
                    text: qsTr("Battery: 0%")
                    font.pixelSize: 22
                    Layout.preferredWidth: 130
                    Layout.preferredHeight: 32
                }

                Text {
                    id: text17
                    text: qsTr("Battery: 0%")
                    font.pixelSize: 22
                    Layout.preferredWidth: 130
                    Layout.preferredHeight: 32
                }

                Text {
                    id: text18
                    text: qsTr("Battery: 0%")
                    font.pixelSize: 22
                    Layout.preferredWidth: 130
                    Layout.preferredHeight: 32
                }
                Layout.preferredHeight: 240
            }
        }
    }
    states: [
        State {
            name: "clicked"
            when: button.checked

            PropertyChanges {
                target: label
                text: qsTr("Button Checked")
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
