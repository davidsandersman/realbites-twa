#!/bin/sh

##############################################################################
# Gradle start up script for UN*X
##############################################################################

# Attempt to set APP_HOME
SAVED="$(pwd)"
cd "$(dirname "$0")/" >/dev/null
APP_HOME="$(pwd -P)"
cd "$SAVED" >/dev/null

APP_NAME="Gradle"
APP_BASE_NAME="$(basename "$0")"

# Default JVM options
DEFAULT_JVM_OPTS='"-Xmx64m" "-Xms64m"'

# Find Java
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        JAVACMD="$JAVA_HOME/jre/sh/java"
    else
        JAVACMD="$JAVA_HOME/bin/java"
    fi
    if [ ! -x "$JAVACMD" ] ; then
        echo "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME"
        exit 1
    fi
else
    JAVACMD="java"
fi

# Classpath includes the wrapper jar
CLASSPATH="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"

# Execute Gradle
exec "$JAVACMD" \
    -classpath "$CLASSPATH" \
    org.gradle.wrapper.GradleWrapperMain \
    "$@"
