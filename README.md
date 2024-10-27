# Diff Thing

## Overview

Diff Thing is a simple diff sharing website which can be easily self hosted if privacy is a concern for your use case.
Otherwise the site is available publicly add [diffthing.com](https://diffthing.com).

## Self hosting

The application is built with the pheonix web framework and there are several options for deployment. For something
simple, see this [guide](https://bjornbr.is/deploying-elixir-and-phoenix/).

## Storing diffs

Each diff is persisted to a postgres database and assigned a unique url that you can share with others
