# What are dotfiles you ask?

Dotfiles are a series of files that help configure your system and its applications. Here are the ones that I am using.

## How it works

Configuration is separated by topic (e.g. homebrew, osx, git, etc.). If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there.
- Anything with an extension of `.zsh` will be included with your shell.
- Anything with an extension of `.symlink` will be symlinked without the extension into `$HOME` when you run `script/bootstrap`.

## What's included

I'm a web developer by trade, so I've geared my dotfiles heavily towards development for the web and tools to make that job easier. You can feel free to add or remove anything you want.
[Fork it](https://bitbucket.org/maxdmyers/dotfiles/fork).

## Components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will be added to your `$PATH` and be made
  available globally.
- **Brewfile**: This is a list of system tools and applications to be installed by [Homebrew ](http://brew.sh) and [Homebrew Cask](http://caskroom.io). I have things like Chrome, 1Password, Skype installed this way. Anything I can't get here comes from the OS X App Store. If you're forking this, you'll want to modify this list to your liking before running the initial setup.
- **TOPIC_NAME/\*.zsh**: Any files with the extension `.zsh` are loaded into your
  environment.
- **TOPIC_NAME/path.zsh**: Any file named `path.zsh` is loaded first and is used to  setup `$PATH` or similar variables.
- **TOPIC_NAME/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is used to setup autocomplete.
- **TOPIC_NAME/\*.symlink**: Any files or directories with the extension `*.symlink` be symlinked into your `$HOME`. This is so you can copies versioned in your dotfiles but still have them autoloaded in your home directory. These are symlinked when you run `script/bootstrap`.

## Install

To install, justs run the following:

```sh
git clone https://bitbucket.org/maxdmyers/dotfiles.git ~/.dotfiles && cd ~/.dotfiles
script/bootstrap
dot
```

The first script will symlink all appropriate files in `.dotfiles` to your home directory. These files can be configured within `~/.dotfiles`. The second script, Dot, is a simple script that installs some dependencies, sets sane OS X defaults, and sets up the OS. Tweak this script, and occasionally run `dot` to keep your environment fresh and up-to-date. You can find this script at `bin/dot`.

## Bugs

These are *my* dotfiles, so they might not work for you. However, if you're using them run into any issues with what's included, please
[open an issue](https://bitbucket.org/maxdmyers/dotfiles/issues) on this repository.

## Thanks

I forked [Mathias Bynens](http://github.com/mathiasbynens)'
[dotfiles](https://github.com/mathiasbynens/dotfiles) as well as [Paul Irish](http://github.com/paulirish)'s [dotfiles](https://github.com/paulirish/dotfiles) and found what worked for me. Eventually, I found [Zach Holman](http://github.com/holman)'s version of [dotfiles](https://github.com/holman/dotfiles) and ported over the best of my previous dotfiles using Zach's framework. That is what you see here.

Check out [more about dotfiles](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/) straight from Zach's blog.
