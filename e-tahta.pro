TARGET = e-tahta
TEMPLATE = app
CONFIG += c++11



LIBS += -L/usr/local/lib -lpoppler-qt5
INCLUDEPATH += ./usr/local/include
LIBS += -L/usr/lib -lopencv_core
LIBS += -L/usr/lib -lopencv_imgproc
LIBS += -L/usr/lib -lopencv_highgui
LIBS += -L/usr/lib -lopencv_imgcodecs #kde kapatılacak


QMAKE_CXXFLAGS = -std=c++11
QT += widgets gui printsupport xml
QT += network


SOURCES += \
    mainwindow.cpp \
    main.cpp \
    gridlines.cpp \
    scene.cpp \
    dotsignal.cpp \
    verectangle.cpp \
    depo.cpp \
    singleinstance.cpp

HEADERS += \
    mainwindow.h \
    gridlines.h \
    diagramitem.h \
    scene.h \
    dotsignal.h \
    verectangle.h \
    function.h \
    buttonclick.h \
    popmenu.h \
    kalemlayout.h \
    filecrud.h \
    depo.h \
    singleinstance.h

RESOURCES += \
    userdrawing.qrc

target.path = /usr/bin

desktop_file.files = e-tahta.desktop
desktop_file.path = /usr/share/applications/
icon.files = icons/e-tahta.png
icon.path = /usr/share/e-tahta/

config_file.files = e-tahta.ini
config_file.path = /usr/share/e-tahta/

auto_start.files = e-tahta-autostart.desktop
auto_start.path = /etc/xdg/autostart/

desktopfile.files = e-tahtaxdglink.sh
desktopfile.path = /usr/bin/


INSTALLS += target desktop_file icon config_file auto_start desktopfile
#INSTALLS += libopencvimgcodecs libopencvcore libopencvhighgui libopencvimgproc
DISTFILES += \
    icons/e-tahta.png \
    e-tahta.ini\
    e-tahta-autostart.desktop\
    e-tahtaxdglink.sh
#\
#    libopencv_core.so.3.4 \
#    libopencv_highgui.so.3.4 \
 #   libopencv_imgproc.so.3.4 \
  #  libopencv_imgcodecs.so.3.4

