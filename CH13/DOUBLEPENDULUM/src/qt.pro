TEMPLATE = app
TARGET = doublePendulum
DESTDIR = ../local/bin
DEPENDPATH += .
INCLUDEPATH += . .. 

mac {
  CONFIG -= app_bundle
}

QT += widgets
CONFIG += qt debug c++11

# Input
SOURCES += *.cpp
HEADERS += *.h
FORMS   += *.ui

QMAKE_DEL_FILE=rm -rf
QMAKE_DISTCLEAN += ../local

mac {
  PKG_CONFIG_PATH += $$[QT_INSTALL_LIBS]/pkgconfig
  PKG_CONFIG = PKG_CONFIG_PATH=$$PKG_CONFIG_PATH pkg-config
}

CONFIG    += link_pkgconfig
PKGCONFIG += QatPlotWidgets



