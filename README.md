# Building RPM package  
  
### Описание проекта  
  
В рамках проекта подготовлен тестовый стенд с 2-мя виртуальными машинами  
одна выступает в роле сервера и она же будет является репозиторием пакетов (reposrv)  
вторая виртуальная машина предназначена для проверки доступности подготовленного репозитория (repoclient)  
  
  Целью данного проекта является сборка своего пакета сервера NGINX с добавленной опцией openssl  
  и размещение пакетов в собственном репозитории  

  Для реализации тестового стенда подготовлен Vagrantfile и файлы скриптов, которые выполняют  
  скачивание исходников дистрибутивов NGINX, openssl, сборку файла RPM, подготовку репозитория  
  и размещение пакетов в созданном репозитории  

  По завершении развертывания тестового стенда необходимо подключиться к repoclient  
  используя команду  vagrant ssh repoclient и проверить доступность репозитория и наличие в нем необходимых пакетов  
  используя последовательно команды:  
  - yum repolist enabled | grep otus  
  - yum list | grep otus  
