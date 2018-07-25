# rc-win-srv-wrapper
Click2Sync Windows Service Wrapper for Java Implementations with WinRun4J

# Requirements

1. Windows 32/64-bit
2. Java 32/64-bit
3. Download org.boris.winrun4j classes
4. Include them in your Java project
5. Inherit from AbstractService like the ServiceTest test of 
    https://github.com/poidasmith/winrun4j/blob/master/org.boris.winrun4j.test/java/src/org/boris/winrun4j/test/ServiceTest.java

# Install

1. Copy folder to C:\ or to Program Files
2. installservice.bat
3. Configure Task scheduler to execute logrotate command every day

# Uninstall

1. uninstallservice.bat
2. remove scheduled task for logrotation
3. Remove Folder C:\installationfolder or Program Files\installationfolder

# Validate if running correctly / Debug

1. check logs folder if last file is changed frequently (it should change at least every minute)
2. if logrotation is working ok, logs should never be bigger than 6 log files and no bigger than a GB, if anything is not working like this, we have logrotation bad configured

# Configuration

1. config.properties for Java integration parameters (if changing properties, service needs to be restarted)
2. C2SSB1SRVC.ini for changing Java Path, dlls paths, Windows Service Configurations, log paths, etc. (if changing properties, service needs to be restarted)
