# Dark Static Assets Action

> Upload Static Assets to a [Dark](https://darklang.com/) canvas

[![GitHub Actions Example/Test](https://github.com/GregBrimble/dark-static-assets-action/workflows/Example/Test/badge.svg)](https://github.com/GregBrimble/dark-static-assets-action/actions?query=workflow%3AExample%2FTest)
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2FGregBrimble%2Fdark-static-assets-action.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2FGregBrimble%2Fdark-static-assets-action?ref=badge_shield)

## Usage

As a part of your [GitHub Actions](https://github.com/features/actions) workflow, add a new step as follows:

```yml
name: Deploy
on:
  push:
    branches:
      - master

jobs:
  deploy:
    name: Deploy
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v1.0.0
        with:
          fetch-depth: 1
      # Build, transpile etc.
      - name: Upload static assets to Dark canvas
        uses: gregbrimble/dark-static-assets-action@v1.0.0
        with:
          user: DARK_USERNAME_HERE
          password: ${{ secrets.DARK_PASSWORD }}
          canvas: DARK_CANVAS_NAME_HERE
          paths: PATH_TO_DIRECTORY_HERE
```

We strongly advise utilizing [GitHub Actions secrets](https://help.github.com/en/actions/automating-your-workflow-with-github-actions/creating-and-using-encrypted-secrets) to securely store your Dark password.

A full example can be found in [`.github/workflows/default.yml`](https://github.com/GregBrimble/dark-static-assets-action/blob/master/.github/workflows/default.yml).


## License
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2FGregBrimble%2Fdark-static-assets-action.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2FGregBrimble%2Fdark-static-assets-action?ref=badge_large)