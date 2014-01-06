TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
    detectobject.cpp \
    preprocessFace.cpp \
    recognition.cpp \
    ImageUtils_0.7.cpp \
    main.cpp
# OpenCv Configuration
INCLUDEPATH += /usr/local/include/opencv
LIBS += -L/usr/local/lib
LIBS += -lopencv_core
LIBS += -lopencv_imgproc
LIBS += -lopencv_highgui
LIBS += -lopencv_ml
LIBS += -lopencv_video
LIBS += -lopencv_features2d
LIBS += -lopencv_calib3d
LIBS += -lopencv_objdetect
LIBS += -lopencv_contrib
LIBS += -lopencv_legacy
LIBS += -lopencv_flann
LIBS += -lopencv_nonfree
LIBS += `pkg-config opencv --libs`

HEADERS += \
    detectObject.h \
    ImageUtils.h \
    preprocessFace.h \
    recognition.h

OTHER_FILES += \
    haarcascades/haarcascade_frontalface_alt2.xml \
    haarcascades/haarcascade_mcs_lefteye.xml \
    haarcascades/haarcascade_eye.xml \
    haarcascades/haarcascade_eye_tree_eyeglasses.xml \
    haarcascade_frontalface_alt2.xml \
    haarcascade_eye.xml \
    haarcascade_eye_tree_eyeglasses.xml
