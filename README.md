# Dsl::CLang

```
DSL para programar en C usando Ruby
```

Este es un proyecto que no tiene utilidad práctica. El objetivo era poner a prueba las características del lenguaje Ruby para crear un DSL de C en un corto espacio de tiempo.

Imitar C con Ruby es un desafío divertido, porque son polos opuestos:

* C es estático, de bajo nivel y gestiona la memoria manualmente.
* Ruby es dinámico, de alto nivel (orientado a objetos) y abstrae todo el hardware.

## Instalación

* Instalar Ruby.
* Instalar la gema `gem install dsl-clang`

## Modo de uso

* Crear un programa con el contenido de un programa C:

```c
#include <stdio.h>

int main() {
    printf("Hola Mundo!\n");
    return 0;
}
```

* Usar el comando `ncc` para "compilar" el programa (`ncc FILENAME`).
* Ejecutar `a.out`.

```bash
$ ncc holamundo.c 

$ ./a.out 
Hola Mundo!
```

> Más [ejemplos](./examples/)

## Características

* "Compilador" `ncc`.
* "Incluye" bibliotecas externas.
* Función `main()` y el tipo `void`.
* Bloques entre llaves.
* Usar el `;` para "delimitar" cada instrucción.
* `return` y `exit()`.
* Tipos de datos `char`, `int`, cadenas de caracteres.
* Declarar variables y asignar valores.
* Salida por pantalla `printf`.
* Entrada por teclado `fgets()`.
* Bucle "while".

> NOTA: `dsl-clang` usa bloques delimitados por llaves, pero en algún se usa el delimitador `end`,

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dvarrui/dsl-clang.

## ANEXO

Enlaces de interés:

* [dsl-latin](https://github.com/dvarrui/dsl-latin)
* [dsl-python](https://github.com/dvarrui/dsl-python)
* [dsl-graph](https://github.com/dvarrui/dsl-graph)

## Desarrollo

