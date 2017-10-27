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

## Issues

In the `lilyjazz` package, the chord symbols may not show up properly.
In that case, go to

`~/.lyp/lilyjazz@X.Y.Z/jazzchords.ly`

Then comment out the lines

```
%chordRootNamer = #JazzChordNames	% update the chord names
%chordNameExceptions = #JazzChords	% update the chord exceptions
```

## Other Common References

- [Multiple Voices][2]


[1]: http://lyp.noteflakes.com/#/
[2]: http://lilypond.org/doc/v2.18/Documentation/notation/multiple-voices
