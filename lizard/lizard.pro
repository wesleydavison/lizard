# Add more folders to ship with the application, here
folder_01.source = qml/lizard
folder_01.target = qml

vk.source = qml/virtualkeyboard
vk.target = qml

te.source = qml/texteditor
te.target = qml

ma.souce = qml/menuapps
ma.target = qml

DEPLOYMENTFOLDERS = folder_01 vk te ma

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH = ../scanning

symbian:TARGET.UID3 = 0xE777F125

# Smart Installer package's UID
# This UID is from the protected range and therefore the package will
# fail to install if self-signed. By default qmake uses the unprotected
# range value if unprotected UID is defined for the application and
# 0x2002CCCF value if protected UID is given to the application
#symbian:DEPLOYMENT.installer_header = 0x2002CCCF

# Allow network access on Symbian
symbian:TARGET.CAPABILITY += NetworkServices

# If your application uses the Qt Mobility libraries, uncomment the following
# lines and add the respective components to the MOBILITY variable.
# CONFIG += mobility
# MOBILITY +=

# Speed up launching on MeeGo/Harmattan when using applauncherd daemon
CONFIG += qdeclarative-boostable

# Add dependency to Symbian components
# CONFIG += qt-components

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp

# Please do not modify the following two lines. Required for deployment.
include(qmlapplicationviewer/qmlapplicationviewer.pri)
qtcAddDeployment()

OTHER_FILES += \
    qml/menuconfig/MenuConfig.qml \
    qml/menuapps/MenuApps.qml
