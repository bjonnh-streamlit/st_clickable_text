# Development
## Template
```shell
$ cd template
$ streamlit run st_clickable_text/__init__.py
```

```shell
$ cd template/st_clickable_text/frontend
$ yarn start
```

## Component library
```shell
$ cd streamlit-component-lib-react-hooks
$ yarn watch
```

# Publish
Set the new version.
```shell
$ docker build -t build_clickable .
$ docker run -it --rm --user $(id -u) -v ~/.ssh/id_rsa_gh_streamlit.pub:/home/node/.ssh/id_rsa_gh_streamlit.pub:ro -v ~/.ssh/id_rsa_gh_streamlit:/home/node/.ssh/id_rsa_gh_streamlit:ro -v ~/.ssh/config:/home/node/.ssh/config:ro -v $PWD:/srv/app build_clickable bash -c "yarn install; yarn lerna version <version>"
```
`major`, `minor`, or `patch` can be used as `<version>`.

Then push the commit to the GitHub repository and create a new release. The CI/CD process will release the package to NPM.
