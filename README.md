# Сборка Zimbra Collaboration Suite (FOSS) на AltLinux

## Введение

Оригинальный файл README (со всеми подробностями по универсальной сборке) [тут](https://github.com/ekorneechev/zm-build/blob/8.8.4/_README.md).

## Подготовка сборочницы

    $ su -
    # apt-get update
    # apt-get install git gcc5-c++ maven ant ant-junit ruby wget rpm-utils java-1.8.0-openjdk java-1.8.0-openjdk-devel perl-IPC-Cmd
    # ln -s /usr/lib/jvm/java /usr/local/java
    # ln -s /usr/share/ant /usr/local/ant
    # ln -s /usr/lib/rpm/brp.d/032-compress.brp /usr/lib/rpm/brp-compress

## Сборка

    $ mkdir installer-build
    $ cd installer-build
    $ git clone https://github.com/ekorneechev/zm-build.git
    $ cd zm-build
    $ git checkout 8.8.4

Сначала необходимо задать переменную окружения RPM_BUILD_ROOT (если не задана, проверить можно `echo $RPM_BUILD_ROOT`):

    $ export RPM_BUILD_ROOT="$HOME/RPM/BUILD"
    
Только после этого можно запускать сборку:

    $ ./build.pl
    
Если будет подобная ошибка:

    Server access Error: Received fatal alert: handshake_failure url=https://maven.repository.redhat.com/
То нужно сменить URL на origin-maven.repository.redhat.com (было достаточно только в zm-mailbox).

После успешной сборки архив будет лежать в следующей директории:

    ../BUILDS/ALT_64-JUDASPRIEST-884-20170322153033-FOSS-1001/

## Установка

    $ su -
    # cd <path_to_archive>
    # tar xzf zcs-8.8.4_1001.ALT_64.20170322153033.tgz
    # mv zcs-8.8.4_1001.ALT_64.20170322153033 zcs
    # cd zcs
    # ./install.sh

### Примечание

Перед установкой необходимо развернуть локальный репозиторий со всеми собранными пакетами из [../packages](https://github.com/ekorneechev/packages). Также необходимое условие успешной установки и настройки - это `bash` 4-ой версии:

    # apt-get install bash4
    # mv /bin/bash /bin/bash3
    # ln -s /bin/bash4 /bin/bash
