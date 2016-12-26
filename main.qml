import QtQuick 2.5
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0

ApplicationWindow {
    id: window;
    visible: true;
    width: bg.width;
    height: bg.height;
    color: "#808000";

        Rectangle {
            id: bgBox;
            width: bg.width;
            height: bg.height;
            anchors {
                horizontalCenter: parent.horizontalCenter;
                verticalCenter: parent.verticalCenter;
            }

            Image {
                id: bg;
                source: "magic.png";
                visible: false;
                smooth: true;
                antialiasing: true;
            }

            ColorOverlay {
                    anchors.fill: bg;
                    source: bg;
                    color: "#808000";
            }

            RotationAnimator {
                    target: bgBox;
                    from: 0;
                    to: 360;
                    duration: 10000;
                    running: true
                    loops: Animation.Infinite
            }
        }

        Rectangle {
            width: pusheen.width;
            height: pusheen.height;
            color: "transparent";
            anchors {
                horizontalCenter: parent.horizontalCenter;
                verticalCenter: parent.verticalCenter;
            }

            AnimatedImage {
                id: pusheen;
                source: "pusheeneat.gif";
                smooth: true;
                antialiasing: true;
            }
        }
}
