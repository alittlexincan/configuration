@ECHO OFF

:: 配置本机Java环境变量
SET CLASSPATH=%CLASSPATH%
SET PATH=%PATH%
SET JAVA_HOME=%JAVA_HOME%

:: 启动服务注册与发现中心
START "eureka-8761" java -jar E:\JetBeanWorkSpace\JavaWorkSpace\ewip\ewip-eureka\target\ewip-eureka-0.0.1-SNAPSHOT.jar

:: 启动服务端
START "server-8888" java -jar E:\JetBeanWorkSpace\JavaWorkSpace\ewip\ewip-server\target\ewip-server-0.0.1-SNAPSHOT.jar

:: 启动客户端
START "client-8080" java -jar E:\JetBeanWorkSpace\JavaWorkSpace\ewip\ewip-client\target\ewip-client-0.0.1-SNAPSHOT.jar

EXIT

@PAUSE
