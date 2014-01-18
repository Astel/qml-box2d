TEMPLATE = lib
CONFIG += plugin
QT += quick
TARGET = $$qtLibraryTarget(Box2D)
TARGETPATH = Box2D
MOC_DIR = .moc
OBJECTS_DIR = .obj

contains(QT_CONFIG, reduce_exports): CONFIG += hide_symbols

INCLUDEPATH += .
include(Box2D/box2d.pri)

importPath = $$[QT_INSTALL_QML]
isEmpty(importPath): importPath = $$[QT_INSTALL_IMPORTS]
target.path = $${importPath}/$$TARGETPATH

#target.path = $$[QT_INSTALL_IMPORTS]/$$TARGETPATH

qmldir.files += $$PWD/qmldir
qmldir.path +=  $${importPath}/$$TARGETPATH

INSTALLS += target qmldir

SOURCES += box2dplugin.cpp \
    box2dworld.cpp \
    box2dbody.cpp \
    box2dfixture.cpp \
    box2ddebugdraw.cpp \
    box2djoint.cpp \
    box2ddistancejoint.cpp \
    box2dprismaticjoint.cpp \
    box2drevolutejoint.cpp \
    box2ddestructionlistener.cpp \
    box2dmotorjoint.cpp \
    box2dweldjoint.cpp \
    box2dpulleyjoint.cpp \
    box2dfrictionjoint.cpp \
    box2dwheeljoint.cpp

HEADERS += \
    box2dplugin.h \
    box2dworld.h \
    box2dbody.h \
    box2dfixture.h \
    box2ddebugdraw.h \
    box2djoint.h \
    box2ddistancejoint.h \
    box2dprismaticjoint.h \
    box2drevolutejoint.h \
    box2ddestructionlistener.h \
    box2dmotorjoint.h \
    box2dweldjoint.h \
    box2dpulleyjoint.h \
    box2dfrictionjoint.h \
    box2dwheeljoint.h
