# [TermuxPy] (1.2.5) Python 3 para Termux 
*************************************************************************************
<b>IMPORTANTE (22/ENE/2020): Por cuestiones de actualización de Python 3.8 en Termux, termuxpy no funcionará y mostrará error. Se hará seguimiento para corregir éste error.</b>
*************************************************************************************

Altenativa: </b> Se recomienda hacer uso de la siguiente aplicación gratuita para Android [![Pydroid 3 - IDE for Python 3
](https://play.google.com/store/apps/details?id=ru.iiec.pydroid3)], la cual contiene scipy, numpy, matplotlib, jupyter, soporte gráfico para tkinter, entre otros módulos interesantes. 


Versión (1.2.5) - <b>Modificación: 23/AGO/2019</b><br>
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
      - [1) Instalar Git:](#1-Instalar-Git)
      - [2) Aceptar la instalación de Git:](#2-Aceptar-la-instalación-de-Git)
      - [3) Esperar hasta que la instalación termine: ](#3-Esperar-hasta-que-la-instalación-termine)
  - [Instalación](#instalación)
    - [1) Obtener TermuxPy](#1-Obtener-TermuxPy)
    - [2) Abrir la carpeta termuxpy](#2-Abrir-la-carpeta-termuxpy)
    - [3) Ejecutar el script termuxpy](#3-Ejecutar-el-script-termuxpy)
  - [Ejemplo ](#ejemplo)
    - [1) Dirigirse a la carpeta ejemplo](#1-Dirigirse-a-la-carpeta-ejemplo)
    - [2) Ejecutar el ejemplo con python](#[2-Ejecutar-el-ejemplo-con-python)
    - [3) Archivo de imagen generado ](#3-Archivo-de-imagen-generado)
	
## Notas de la versión
Versión (1.2.5) - <b>Modificación: 23/AGO/2019</b><br>
Se ha agregado soporte para procesadores con arquitectura de 64 bits. Ahora termuxpy ya no necesita ejecutarse dos veces.<br><br>

Versión (1.2.4) - <b>Modificación: 23/AGO/2019</b><br>
Se ha agregado una correción para prevenir el paro de la instalación cuando un paquete ha sido depreciado o renombrado.<br><br>


Versión (1.2.3) - <b>Modificación: 17/ABR/2019</b><br>
Soporte para terminales que por defecto tienen en blanco la variable de entorno LD_LIBRARY_PATH y no puede instalarse correctamente numpy, scipy y matplotlib. <br><br>

Versión (1.2.2) - <b>Modificación: 17/ABR/2019</b><br>
Soporte para nueva versión de termux, adición de librería "zlib-dev" para compilación correcta de matplotlib <br><br>

Versión (1.2.1) - <b>Modificación: 16/MAR/2019</b><br>
Se añadió modificación para ejecutar la última versión de matplotlib (3.0.3)<br>
<b>¡Mejora importante!:</b><br>
Debido a la versión 3.0.3 de matplotlib, ahora ya NO será necesario escribir directamente el uso del backend "Agg" antes de importar matplotlib.pyplot, pues la biblioteca detectará automáticamente y definirá el backend "Agg" para Termux, esto queda explicado de la siguiente forma:<br>

Vieja importación (aún puede usarse):
```python
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plot 
```

El código anterior puede simplificarse por (dando el mismo resultado):
```python
import matplotlib.pyplot as plot 
```
<b>Importante</b>: Esto NO brindará la disponibilidad de ver los gráficos mediante el uso de <b>plot.show()</b>, para guardar los gráficos se recomienda usar plot.savefig(nombre_de_archivo).<br><br>


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
```bash
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
````bash
git clone https://github.com/NatanVilchis/termuxpy
````
<img src="images/termuxpy_1.jpg" width="75%" alt="Instalación de TermuxPy"> <br>
Esperar a que se termine de obtener todo el repositorio: <br>
<img src="images/termuxpy_2.jpg" width="75%" alt="Instalación de TermuxPy"> <br>
### 2) Abrir la carpeta termuxpy
En Termux ejecutar el siguiente comando:
````bash
cd termuxpy
````
<img src="images/termuxpy_3.jpg" width="75%" alt="Instalación de TermuxPy"> <br>

### 3) Ejecutar el script termuxpy
En Termux ejecutar el siguiente comando:
````bash
bash termuxpy.sh
````
<b>Es importante que mientras la instalación esté en proceso el equipo no se suspenda ya que puede generar problemas de instalación</b><br>
<img src="images/termuxpy_4.jpg" width="75%" alt="Instalación de TermuxPy"> <br>
Esperar a que termine la instalación:
<img src="images/termuxpy_5.jpg" width="75%" alt="Instalación de TermuxPy"> <br>

<b>Nota (para algunos dispositivos):</b><br>
Es posible que algunos dispositivos no tengan asignada correctamente la variable de entorno <b>LD_LIBRARY_PATH</b>, en este caso se mostrará el siguiente mensaje:<br>
<img src="images/termuxpy_ld_library.jpg" width="75%" alt="Mensaje de LD_LIBRARY_PATH"> <br>
Para continuar con la instalación dirigirse a la carpeta donde se descargó "termuxpy" y ejecutar de nuevo el comando:
````bash
bash termuxpy.sh
````
La instalación ahora acabará sin problemas. <br><br>


## Ejemplo
Este repositorio cuenta con un ejemplo para poder graficar usando la biblioteca matplotlib
### 1) Dirigirse a la carpeta ejemplo
Acceder a la carpeta de instalación del repositorio termuxpy e ingresar lo siguiente:
````bash
cd ejemplo
````
<img src="images/ejemplo_1.jpg" width="75%" alt="Ejemplo"> <br>

### 2) Ejecutar el ejemplo con python
En Termux escribir el siguiente comando: 
````bash
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
Este proyecto se encuentra bajo la licencia MIT, ver  [LICENSE](LICENSE) para ver los detalles.
