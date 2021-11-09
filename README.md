# pre-commit-hooks

pre-commit hooks can be useful to perform small checks locally before committing
changes to a repo. I suggest using [pre-commit](https://pre-commit.com/), for
the easiest configuration and setup.

Below, we provide a quick tutorial on how to use the pre-commit framework and
then point the user to some resources on pre-commit hooks.

## Tutorial

### Setup

You can install pre-commit using pip or homebrew:

```shell
pip install pre-commit
brew install pre-commit
```

After installing, you must create a config file within your project which
pre-commit will then use to generate the pre-commit scripts:

```shell
touch .pre-commit-config.yaml
```

### Config File

In your config file, you can specify the hooks you would like to use in your project.

### Install Hooks

To compile your hooks from the config file, you can use:

```shell
pre-commit install
```

### Run Hooks

To run your hooks on (a) specific file(s), you can use:

```shell
pre-commit run --files README.md
```

To run your hooks on all files without committing, you can use:

```shell
 pre-commit run --all-files
```

When you commit, your hooks will be automatically triggered.

### Congrats, you are all set up to use pre-commit hooks :tada:!

## Advanced Features

You can automatically update the versions of the hooks you use using:

```shell
pre-commit autoupdate
```

## Resources

This repo contains several example configuration files, found in `examples/`.
The repo also uses a [configuration file]() to check the format of the markdown
and yaml files in the repo.

- [pre-commit website](https://pre-commit.com/)
- [pre-commit supported hooks](https://pre-commit.com/hooks.html)
- [R hooks](https://github.com/lorenzwalthert/precommit)
