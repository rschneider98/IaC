:: File provides instructions to the user and opens the correct webpage
ECHO OFF
ECHO "Install JDK 11 from Oracle"
START https://www.oracle.com/java/technologies/javase-jdk11-downloads.html#license-lightbox
START https://www.apache.org/dyn/closer.cgi/netbeans/netbeans/12.0/Apache-NetBeans-12.0-bin-windows-x64.exe
ECHO "Add Java installation location /bin to PATH"
ECHO "Restart CMD and run: java --version"
