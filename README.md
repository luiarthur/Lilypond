# My Lilypond Projects

## Installing Lilypond

### Old-school Way
On Ubuntu, you can install it with

```bash
sudo apt-get install lilypond
```

### Preferred Way
But using the package manager [`lyp`][1] might be better. It relies on Ruby.
You can install `lyp` by

```bash
gem install lyp
```

You can then install lilypond by

```bash
lyp install lilypond
```

## Install Lilypond Packages

For example, installing the package `lilyjazz` can be done as follows:

```bash
lyp install lilyjazz
```

[1]: http://lyp.noteflakes.com/#/
