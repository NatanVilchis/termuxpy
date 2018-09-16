#actualizamos el sistema:
apt update
apt -y upgrade

#instalamos coreutils y gnupg para utilidades del sistema: 
apt -y install coreutils gnupg wget
#Creamos una carpeta para contener un listado de paquetes interno:
mkdir $PREFIX/etc/apt/sources.list.d
#Escribimos (Creamos) un archivo en la carpeta creada con nombre de archivo pointless.list_
#Este comando es util para instalar numpy para la ultima version de termux (ya que ha cambiado algunas instrucciones
# de su codigo)
echo "deb https://its-pointless.github.io/files/ termux extras" > $PREFIX/etc/apt/sources.list.d/pointless.list
#Descargamos el archivo de la clave GPG:
wget https://its-pointless.github.io/pointless.gpg
#Anadimos la clave a nuestro entorno:
apt-key add pointless.gpg
#Volvemos a actualizar el listado de paquetes de apt:
apt update
#Instalamos python:
apt -y install python
#Actualizamos el gestor de paquetes pip de python:
pip install --upgrade pip 
#Instalamos bibliotecas para poder ejecutar las librerias:
apt -y install python-dev libcrypt-dev libgfortran5 openblas freetype freetype-dev libpng libpng-dev pkg-config clang fftw libzmq libzmq-dev   
#Instalamos bibliotecas para python necesarias para numpy-matplotlib: 
pip install freetype-py pypng
#Instalamos las bibliotecas de scipy numpy:
pkg install scipy numpy  
#Finalmente instalamos la biblioteca matplotlib
pip install matplotlib
 
