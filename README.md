# Dsl::Clang

TODO: Delete this and the text below, and describe your gem

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/dsl/clang`. To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

TODO: Replace `UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG` with your gem name right after releasing it to RubyGems.org. Please do not do it earlier due to security reasons. Alternatively, replace this section with instructions to install your gem from git if you don't plan to release to RubyGems.org.

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG
```

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/dsl-clang.
[<< back](../README.md)

# DSL - lenguaje C

## Ejecutar los ejemplos de C

Para ejecutar los programas de ejemplo hacemos lo siguiente:

* Elegimos un DSL, por ejemplo C:
```bash
c
├── 01-holamundo.c
├── 02-contador.c
├── 03-factorial.c
├── lib/
├── ncc
└── README.md
```

* Cargamos los alias y entramos en la carpeta del DSL de C:
```bash
source .nalias
cd c
```

* Consultamos el ejemplo: 
```c
#include <stdio.h>

main {
    printf("Hola Mundo!\n");
    return 0;
}
```

* "Compilamos" y ejecutamos el programa:
```console
$ ncc 01-holamundo.c 

$ ./a.out 
Hola Mundo!
```

En este caso, el comando `ncc` simula el comportamiento de un compilador y construye el ejecutable `a.out`.

## Desarrollo

Imitar C en Ruby es un desafío porque son polos opuestos:
* C es estático, de bajo nivel y gestiona memoria manualmente.
* Ruby es dinámico, de alto nivel y abstrae todo lo anterior.

El primer reto, debemos imitar la sintaxis de tipos, el uso de punteros y la estructura de funciones con `main()`.

