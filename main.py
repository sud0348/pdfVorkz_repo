# This Python file uses the following encoding: utf-8
import sys
import os
import datetime

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject, Slot, Signal, QTimer


class MainWindow(QObject):
    def __init__(self):
        QObject.__init__(self)

        #QTimer - Run QTimer
        self.timer = QTimer()
        self.timer.timeout.connect(lambda: self.setTime())
        self.timer.start(1000)

    # Signal Set Name
    setName = Signal(str)

    #Signal Print Time
    printTime = Signal(str)


    # Set Timer Function
    def setTime(self):
        now = datetime.datetime.now()
        formatDate = now.strftime("%d/%m/%Y %H:%M:%S %p")
#        print(formatDate)
        self.printTime.emit(formatDate)

    # Function Set Name to Text
    @Slot(str)
    def welcomeText(self, name):
        self.setName.emit("Test, " + name)



if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()


    #Get Context
    main = MainWindow()
    engine.rootContext().setContextProperty("backend", main)


    engine.load(os.path.join(os.path.dirname(__file__), "qml/main.qml"))

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
