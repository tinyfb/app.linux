#!/bin/bash

JAVA_VER=$(java -version 2>&1 | sed -n ';s/.* version "\(.*\)\.\(.*\)\..*"/\1\2/p;')

[ "$JAVA_VER" -ge 18 ] && echo "ok, java is 1.8 or newer" || echo "it's too old..."

jav=$(readlink -f $(which java))

javPath=${jav%????????????}

java  -Dfile.encoding=UTF-8 -classpath $javPath/jre/lib/charsets.jar:$javPath/jre/lib/deploy.jar:$javPath/jre/lib/ext/cldrdata.jar:$javPath/jre/lib/ext/dnsns.jar:$javPath/jre/lib/ext/jaccess.jar:$javPath/jre/lib/ext/jfxrt.jar:$javPath/jre/lib/ext/localedata.jar:$javPath/jre/lib/ext/nashorn.jar:$javPath/jre/lib/ext/sunec.jar:$javPath/jre/lib/ext/sunjce_provider.jar:$javPath/jre/lib/ext/sunpkcs11.jar:$javPath/jre/lib/ext/zipfs.jar:$javPath/jre/lib/javaws.jar:$javPath/jre/lib/jce.jar:$javPath/jre/lib/jfr.jar:$javPath/jre/lib/jfxswt.jar:$javPath/jre/lib/jsse.jar:$javPath/jre/lib/management-agent.jar:$javPath/jre/lib/plugin.jar:$javPath/jre/lib/resources.jar:$javPath/jre/lib/rt.jar:$javPath/lib/ant-javafx.jar:$javPath/lib/dt.jar:$javPath/lib/javafx-mx.jar:$javPath/lib/jconsole.jar:$javPath/lib/packager.jar:$javPath/lib/sa-jdi.jar:$javPath/lib/tools.jar:./tinylibs/byte-buddy-1.8.15.jar:./tinylibs/client-combined-3.13.0-sources.jar:./tinylibs/client-combined-3.13.0.jar:./tinylibs/client-combined-3.14.0-sources.jar:./tinylibs/client-combined-3.14.0.jar:./tinylibs/commons-codec-1.10.jar:./tinylibs/commons-exec-1.3.jar:./tinylibs/commons-logging-1.2-javadoc.jar:./tinylibs/commons-logging-1.2.jar:./tinylibs/gson-2.8.4.jar:./tinylibs/guava-25.0-jre.jar:./tinylibs/httpclient-4.5.5.jar:./tinylibs/httpcore-4.4.9.jar:./tinylibs/java-json.jar:./tinylibs/jsoup-1.11.3.jar:./tinylibs/log4j-1.2.17.jar:./tinylibs/okhttp-3.10.0.jar:./tinylibs/okio-1.14.1.jar:./tinylibs/TinyApplication.jar application.Main
