# Disclaimer
This project was created for educational purposes. It is freely accessible to everyone. No liability is accepted for any damage resulting from its use.

# Licenses used software packages
- [Selenium](http://www.apache.org/licenses/LICENSE-2.0), [Apache 2.0](http://www.apache.org/licenses/LICENSE-2.0)
- [Robot Framework](python -m pip install testobject), [Apache 2.0](http://www.apache.org/licenses/LICENSE-2.0)

# Important Links
(UserGuide of Robot Framework)[https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html]

# Description
This project is intended to provide an easy introduction to programming with [Robot Framework](https://robotframework.org/) using Python.

If you have any questions feel free to contact me directly.

# Software Used
Microsoft Windows 11 v22H2

Firefox Browser v123.0.1
Google Chrome v122.0.6261.95
Microsoft Edge v122.0.2365.66

Python v3.12.2

<!-- Selenium for Java v4.18.1 (WebDriver) -->

Microsoft Visual Studio Code V1.87.0
Extensions:
- IntelliCode v1.2.30 of Microsoft 
- IntelliCode API Usage Examples v0.2.8 of Microsoft
- Pylance v2024.3.1 of Microsoft
- Python v2024.2.1 of Microsoft
- Python Debugger v2024.2.0 of Microsoft
- Robot Framework Language Server v1.11.0 of Robocorp

# Installation Instructions (Windows 11)
## Browsers
Download the browsers and install them with standard settings. Firefox you can install using the Microsoft store.

## Python
!!!DON'T USE THE INSTALLATION FROM THE MICROSOFT STORE!!!
1. Go to (Python Download Website)[https://www.python.org/downloads/] and download Python (for Windows)
2. Open the file after downloading
3. Be sure you check the "Add python.exe to PATH" on the first page of the installation wizard
4. Hit "Install now"
5. Check the admin option "Disable path length limit"
6. You should see a windwo "Setup was successful"
7. Open a command line and type `python --version`
8. It should show you the version if everything was installed successful and the path works

## Robot Framework
1. Open command line
2. `python -m pip install robotframework`
3. Open command line and enter `robot --version`
4. An output with the current version of robot framework should appear

## Selenium
1. pip install --upgrade robotframework-seleniumlibrary

## Visual Studio Code
1. Open Microsoft Store in Windows
2. Search for "visual studio code" (not the insiders version)
3. Open it and install it
4. After the installation is completed, start it
5. On the left top side, press the button "Extensions"
6. Search for the extensions (listed in the "Software Used" section above) and install them.
7. After installation of all extensions, close visual studio and open it again.
8. With "File --> Open Folder" you can open the folder where you downloaded the repository from github.

# Hints
## Finding XPath easy
An easy way to find and copy XPATH of web elements with Edge browser
1. Open the website
2. Press F12 to open "Inspect"
3. Left-top-corner of "Inspect" press the button "Select ..."
4. Now you can select an element on the website by clicking on it.
5. The element will be highlighted in the "Inspect" as code
6. Right-click the highlighted code "Copy --> Copy full Xpath"
7. Enjoy your expath

# Folder Structure and File Description
Folder contained in the workspace:
- `src\`: The folder to maintain sources
- `src\00_test_environment`: An example to test your installation. (Source)[https://robotframework.org/?tab=0&example=Simple%20Example%202#getting-started]


# Program Description

<!-- For demo purposes the website [Saucedemo](https://www.saucedemo.com/) was used.

Maven starts the tests and creates a report in the end.
The project build information you can find in the pom.xml.

In the folder "testcases" you can find the different testcases. Most of them extends the class in "Tests.java".
The testcases access the page_objects to get access on the different objects of the web application.

In the file "Tests.java" you can change the Selenium WebDriver to different browsers. I tested it with Mozilla Firefox, MS Edge and Google Chrome.

For the sake of getting some detailed information in the htlm report, I created the testcase "FailingTest.java" with two tests that fail. -->
