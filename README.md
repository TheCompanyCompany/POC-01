# Dream HTMX

## Installing Ocaml and Opam

OCaml's package manager, opam, installs both the compiler, as well as any
packages. Ensure to install gcc, build-essential, curl, unzip, and bubblewrap
on your system, then run the following in your terminal to
download and install the newest version of opam:

```bash
bash -c "sh <(curl -fsSL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)"
```

You need to install Opam, which will create a default opam switch. An opam
switch is an isolated environment for the OCaml compiler and any packages you
install.

```bash
opam init
```

Run the following command to set up your shell environment:

```bash
eval $(opam env)
```

And run this to initialize your shell:

```bash
eval $(opam env --switch=default)
```

## Importing this project's opam switch

```bash
opam import ./.opam-switch
```

## Adding dependencies

To add dependencies use the dune-project file.

## How to run the project

```bash
dune build
```

```bash
dune exec src/server.exe
```

## How to deploy the project

This project uses DigitalOcean automatic deployment
