# Git Meta Buildpack

A [Heroku](https://devcenter.heroku.com/) Buildpack for [meta](https://github.com/mateodelnorte/meta) users.

## How to use

The Git Meta Buildpack clones a repository using `meta`, optionally pinning sub-repositories to certain branches based
on environment variables.

To set up the use of several buildpacks from the Heroku CLI use `buildpacks:add`:

```
heroku buildpacks:clear
heroku buildpacks:add https://github.com/furious-luke/git-meta-buildpack.git
heroku buildpacks:add heroku/python
```

## Testing

```bash
docker-compose run --rm git-meta-buildpack /tmp/bin/detect
docker-compose run --rm git-meta-buildpack /tmp/bin/compile .
```
