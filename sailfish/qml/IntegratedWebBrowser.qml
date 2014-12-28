import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    property alias url: webView.url

    SilicaWebView {
        PullDownMenu {
            MenuItem {
                text: "Copy URL"
                onClicked: {
                    QMLUtils.copyToClipboard(url);
                    infoBanner.alert("URL copied to clipboard");
                }
            }
            MenuItem {
                text: "Open in external browser"
                onClicked: {
                    Qt.openUrlExternally(url);
                    infoBanner.alert("Launching web browser...");
                }
            }
        }

        id: webView

        anchors {
            fill: parent
        }
    }
}
