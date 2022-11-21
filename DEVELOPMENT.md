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
$ yarn lerna version <version>
```
`major`, `minor`, or `patch` can be used as `<version>`.

Then push the commit to the GitHub repository and create a new release. The CI/CD process will release the package to NPM.
