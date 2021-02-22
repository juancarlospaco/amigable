# Amigable

- Programar en Espanol para Latinos, Hispanos, Niños

# Ejemplo

```nim
_importar strutils
_exportar strutils

_tipos Objeto* = _objeto

_constante a = _verdadero
_variable b = _falso
_inmutable c = 42 _dividir 2

_bloque `esto es un ejemplo`:
  _imprimir 546

_intentar:
  _sies 9 > 0:
    _imprimir 23
  _osi 5 > 0:
    _imprimir 543
  _deultima:
    _imprimir 546
_excepto:
  _descartar
_finalmente:
  _imprimir 4

_elegir 4
_deel 2:
  _imprimir 2
_deel 4:
  _imprimir 4
_deultima:
  _imprimir 9

_bucle i _enel 0..9:
  _imprimir i

_funcion ejemplo(argumento: _texto): _texto =
  _resultado = argumento

_cuando _principal:
  _imprimir ejemplo("Hola")

```


# Instala

```
mkdir ~/.config/nim/
curl -o ~/.config/nim/config.nims https://raw.githubusercontent.com/juancarlospaco/amigable/nim/config.nims
```


# Usa

```console
$ nim ejecuta archivo.nim
```


# Desinstala

```
rm ~/.config/nim/config.nims
```


# Requisitos

- [Nim](https://nim-lang.org/install.html)
