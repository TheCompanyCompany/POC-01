# Dream + HTMX

<!--toc:start-->
- [Dream + HTMX](#dream-htmx)
  - [Installing Ocaml and Opam](#installing-ocaml-and-opam)
<!--toc:end-->

## Installing Ocaml and Opam

OCaml's package manager, opam, installs both the compiler, as well as any additional packages. Ensure gcc, build-essential, curl, unzip, and bubblewrap are installed on your system, then run the following in your terminal to download and install the newest version of opam:

```bash
bash -c "sh <(curl -fsSL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)"
```

Opam needs to be initialised, which will create a default opam switch. An opam switch is an isolated environment for the OCaml compiler and any packages you install.

```bash
opam init
```

Additionally, if you did not already add the necessary lines to your shell configuration file, you need to run the following command to set up your shell environment to use opam:

```bash
eval $(opam env)
```

Finally, run this to initialize your shell:

```bash
eval $(opam env --switch=default)
```

## Importing this project's opam switch

```bash
opam import ./.opam-switch
```
