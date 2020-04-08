This is an example of Robot Framework tests using the SwingLibrary to interact with Java Swing UI apps.

### Setup
* Install Jython (https://www.jython.org/installation)
* Install Robot Framework in Jython
  * `jython -m pip install robotframework`
* Download the latest SwingLibrary jar (https://github.com/robotframework/SwingLibrary/releases)
* Copy the `swinglibrary-<version>.jar` to the `./lib` directory
* Build the DialogDemo in `../app` by issuing `ant` command
* Copy the `../app/dist/DialogDemo.jar` to the `./lib` directory

### Execution
* To launch the test app alone (no automation), issue command `./run.py startapp`
* To run the automated tests, issue command `./run.py test1.robot`
