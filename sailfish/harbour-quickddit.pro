# The name of your app.
# NOTICE: name defined in TARGET has a corresponding QML filename.
#         If name defined in TARGET is changed, following needs to be
#         done to match new name:
#         - desktop icon filename must be changed
#         - desktop filename must be changed
#         - icon definition filename in desktop file must be changed
#         - filename of rpm/$$TARGET.spec and rpm/$$TARGET.yaml
#         - the app name in rpm/$$TARGET.yaml file
TEMPLATE = app
TARGET = harbour-quickddit

DEFINES += APP_VERSION=\\\"$$VERSION\\\" Q_OS_SAILFISH

QT *= network

CONFIG += sailfishapp

INCLUDEPATH += ..

HEADERS += \
    ../src/linkobject.h \
    ../src/linkmodel.h \
    ../src/utils.h \
    ../src/quickdditmanager.h \
    ../src/abstractmanager.h \
    ../src/abstractlistmodelmanager.h \
    ../src/parser.h \
    ../src/aboutsubredditmanager.h \
    ../src/appsettings.h \
    ../src/commentobject.h \
    ../src/commentmodel.h \
    ../src/subredditobject.h \
    ../src/subredditmodel.h \
    ../src/qmlutils.h \
    ../src/imgurmanager.h \
    ../src/votemanager.h \
    ../src/commentmanager.h \
    ../src/multiredditobject.h \
    ../src/multiredditmodel.h \
    ../src/messageobject.h \
    ../src/messagemodel.h \
    ../src/messagemanager.h \
    ../src/apirequest.h \
    ../src/aboutmultiredditmanager.h

SOURCES += main.cpp \
    ../src/linkobject.cpp \
    ../src/linkmodel.cpp \
    ../src/utils.cpp \
    ../src/quickdditmanager.cpp \
    ../src/abstractmanager.cpp \
    ../src/abstractlistmodelmanager.cpp \
    ../src/parser.cpp \
    ../src/aboutsubredditmanager.cpp \
    ../src/appsettings.cpp \
    ../src/commentobject.cpp \
    ../src/commentmodel.cpp \
    ../src/subredditobject.cpp \
    ../src/subredditmodel.cpp \
    ../src/qmlutils.cpp \
    ../src/imgurmanager.cpp \
    ../src/votemanager.cpp \
    ../src/commentmanager.cpp \
    ../src/multiredditmodel.cpp \
    ../src/multiredditobject.cpp \
    ../src/messageobject.cpp \
    ../src/messagemodel.cpp \
    ../src/messagemanager.cpp \
    ../src/apirequest.cpp \
    ../src/aboutmultiredditmanager.cpp

# Qt-Json
HEADERS += ../qt-json/json.h
SOURCES += ../qt-json/json.cpp

OTHER_FILES += \
    rpm/$${TARGET}.spec \
    rpm/$${TARGET}.yaml \
    rpm/$${TARGET}.changes \
    $${TARGET}.desktop \
    $${TARGET}.png \
    qml/SubredditsBrowsePage.qml \
    qml/SubredditsPage.qml \
    qml/SubredditDelegate.qml \
    qml/SignInPage.qml \
    qml/SelectionDialog.qml \
    qml/SearchPage.qml \
    qml/SearchDialog.qml \
    qml/OpenLinkDialog.qml \
    qml/MainPage.qml \
    qml/main.qml \
    qml/LinkMenu.qml \
    qml/LinkDelegate.qml \
    qml/InfoBanner.qml \
    qml/ImageViewPage.qml \
    qml/Constant.qml \
    qml/CommentPage.qml \
    qml/CommentMenu.qml \
    qml/CommentDelegate.qml \
    qml/AppSettingsPage.qml \
    qml/AboutSubredditPage.qml \
    qml/AboutPage.qml \
    qml/AbstractPage.qml \
    qml/cover/CoverPage.qml \
    qml/cover/quickddit.png \
    qml/TextAreaDialog.qml \
    qml/MainPageMorePage.qml \
    qml/MultiredditsPage.qml \
    qml/MessagePage.qml \
    qml/MessageDelegate.qml \
    qml/MessageMenu.qml \
    qml/LoadingFooter.qml \
    qml/SimpleListItem.qml \
    qml/AboutMultiredditPage.qml \
    qml/VideoViewPage.qml \
    qml/IntegratedWebBrowser.qml
