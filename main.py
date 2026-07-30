import sys
from PyQt6.QtCore import QUrl
from PyQt6.QtWidgets import QApplication, QMainWindow
from PyQt6.QtWebEngineWidgets import QWebEngineView

class UniSimonApp(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Universidad Simón Bolívar")
        self.resize(1200, 800)
        self.browser = QWebEngineView()
        self.browser.setUrl(QUrl("https://www.unisimon.edu.co/"))
        self.setCentralWidget(self.browser)

if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = UniSimonApp()
    window.show()
    sys.exit(app.exec())
