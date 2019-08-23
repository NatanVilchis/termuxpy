function echo2(){
  echo -e "\033[32m$@\033[0m"
}

#actualizamos el sistema:
apt update
#apt -y upgrade

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
#Agregamos si está en blanco la variable de librerias
if [ -z "$LD_LIBRARY_PATH" ]
then
	export LD_LIBRARY_PATH=/data/data/com.termux/files/usr/lib
	echo "export LD_LIBRARY_PATH=/data/data/com.termux/files/usr/lib" >> ~/.bashrc
	source ~/.bashrc
fi
#Instalamos python:
apt -y install python
#Actualizamos el gestor de paquetes pip de python:
pip install --upgrade pip 
#Instalamos bibliotecas para poder ejecutar las librerias:
requerimientos=(
	python-dev
	libcrypt-dev
	libgfortran5
	openblas
	freetype*
	freetype-dev
	libpng
	libpng-dev
	pkg-config
	clang
	fftw
	libzmq
	libzmq-dev
	zlib*
	zlib-dev   

)
for i in "${requerimientos[@]}"; do
	apt -y install "$i"
done
#Instalamos bibliotecas para python necesarias para numpy-matplotlib: 
pip install freetype-py pypng
#Instalamos las bibliotecas de numpy scipy :
pkg install numpy scipy  
#Finalmente instalamos la biblioteca matplotlib
pip install matplotlib==3.0.3
#instalación correcta


echo " "
echo2 "====> ¡FINISHED INSTALLATION! <==="
echo2 "The installation has been completed succesfully!"
echo "YOU DON'T NEED to run termuxpy.sh again"
echo "Termux will restart to apply the changes."
echo "Thanks for using termuxpy"
echo " "
echo2 "====> INSTALACIÓN EXITOSA! <==="
echo2 "La instalación ha terminado con éxito!"
echo "Ya NO ES NECESARIO ejecutar termuxpy.sh"
echo "Termux se reiniciará para aplicar los cambios"
echo "Gracias por usar termuxpy!"
echo " "
kill -9 $PPID
