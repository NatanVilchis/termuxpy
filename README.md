# [TermuxPy] (1.2.0) Python 3 para Termux 
[![GitHub license](https://img.shields.io/github/license/mashape/apistatus.svg)](LICENSE)
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.me/natanvilchis) <br>

Python3 + Numpy + Scipy + Matplotlib para Termux (Android). <br>
Un script automatizado para instalar bibliotecas de uso científico para Python <br>

*Leer en otros lenguajes: [Español](README.md), [Inglés](README.en.md)*<br>

![Alt text](images/termuxpy.jpg "TermuxPy")
 
 
## Tabla de contenido
  - [Notas de la versión](#notas-de-la-versión)
  - [Pre-requisitos](#pre-requisitos)
    - [Permisos de escritura activados](#Permisos-de-escritura-activados)
    - [Instalar Git](#instalar-git)
      - [1) Instalar Git:](#instalamos-git)
      - [2) Aceptar la instalación de Git:](#aceptar-instalacion-git)
      - [3) Esperar hasta que la instalación termine: ](#esperar-git)
  - [Instalación](#instalación)
    - [1) Obtener TermuxPy](#obtener-termuxpy)
    - [2) Abrir la carpeta termuxpy](#abrir-termuxpy)
    - [3) Ejecutar el script termuxpy.sh](#ejecutar-script-termuxpy)
  - [Ejemplo ](#ejemplo)
    - [1) Dirigirse a la carpeta ejemplo ](#carpeta-ejemplo)
    - [2) Ejecutar el ejemplo con python ](#ejemplo-python)
    - [3) Archivo de imagen generado ](#grafico-python)
	
## Notas de la versión
Versión (1.2.0) - <b>Modificación: 18/NOV/2018</b><br>
Se añadió modificación para ejecutar la última versión de matplotlib (3.0.2)<br>



## Pre-requisitos
Es necesario contar con aproximadamente <b>380 MB</b> de espacio libre para una correcta instalación (el tamaño puede variar para actualizaciones posteriores).


### Permisos de escritura activados
Tener activados los permisos de escritura de Termux (Ajustes => Apps => Termux => Permisos => Almacenamiento) <br>
<img src="images/permisos_1.jpg" width="25%" alt="Activar permisos en Termux">
<img src="images/permisos_2.jpg" width="25%" alt="Activar permisos en Termux">
<img src="images/permisos_3.jpg" width="25%" alt="Activar permisos en Termux">

### Instalar Git
Instalar git en Termux:  
#### 1) Instalar Git:
Ejecutar en termux el siguiente comando: <br> 
```
pkg install git
```


<img src="images/git_1.jpg" width="75%" alt="pkg install git"> <br>
#### 2) Aceptar la instalación de Git:
<img src="images/git_2.jpg" width="75%" alt="Aceptamos instalación"> <br>
#### 3) Esperar hasta que la instalación termine: 
<img src="images/git_3.jpg" width="75%" alt="Instalación terminada"> <br>

## Instalación
### 1) Obtener TermuxPy
En Termux ejecutar el siguiente comando:
````
git clone https://github.com/NatanVilchis/termuxpy
````
<img src="images/termuxpy_1.jpg" width="75%" alt="Instalación de TermuxPy"> <br>
Esperar a que se termine de obtener todo el repositorio: <br>
<img src="images/termuxpy_2.jpg" width="75%" alt="Instalación de TermuxPy"> <br>
### 2) Abrir la carpeta termuxpy
En Termux ejecutar el siguiente comando:
````
cd termuxpy
````
<img src="images/termuxpy_3.jpg" width="75%" alt="Instalación de TermuxPy"> <br>

### 3) Ejecutar el script termuxpy.sh
En Termux ejecutar el siguiente comando:
````
bash termuxpy.sh
````
<b>Es importante que mientras la instalación esté en proceso el equipo no se suspenda ya que puede generar problemas de instalación</b><br>
<img src="images/termuxpy_4.jpg" width="75%" alt="Instalación de TermuxPy"> <br>
Esperar a que termine la instalación:
<img src="images/termuxpy_5.jpg" width="75%" alt="Instalación de TermuxPy"> <br>




## Ejemplo
Este repositorio cuenta con un ejemplo para poder graficar usando la biblioteca matplotlib
### 1) Dirigirse a la carpeta ejemplo
````
cd ejemplo
````
<img src="images/ejemplo_1.jpg" width="75%" alt="Ejemplo"> <br>

### 2) Ejecutar el ejemplo con python
En Termux escribir el siguiente comando: 
````
python normal_pdf.py
````
<img src="images/ejemplo_2.jpg" width="75%" alt="Ejemplo"> <br>


Se ejecutará el ejemplo mostrando el gráfico al presionar la tecla de enter <br>
<img src="images/ejemplo_3.jpg" width="75%" alt="Ejemplo"> <br>
Gráfico generado:
 
<img src="images/ejemplo_4.jpg" width="75%" alt="Ejemplo"> <br>
 
### 3) Archivo de imagen generado
El gráfico generado se guardará automáticamente con nombre "normal_pdf.jpg" <br>
<img src="images/ejemplo_5.jpg" width="75%" alt="Ejemplo"> <br>

## Hecho por 
[Natan Vilchis](https://natanvilchis.org) <br>
Repositorio usado para ayuda de este script: [its-pointless-gcc_termux](https://github.com/its-pointless/gcc_termux)

## Licencia
Este proyecto está licenciado bajo la licencia MIT, ver  [LICENSE](LICENSE) para ver los detalles.
