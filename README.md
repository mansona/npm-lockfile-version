# NPM Lockfile Version Check

This action checks that your package-lock.json has the correct version. This
prevents people from committing the wrong version of a package-lock.json file
now that the version has changed between npm@6 and npm@7

## Configuration options

- `version` (optional)
  - defaults to 2 (for npm@7)

## Usage

To use this action, simply add a step to your workflow, like so:

```yaml
- uses: mansona/npm-lockfile-version@v1
```

Make sure that you add this after your `actions/checkout` action.

```yaml
on: push
jobs:
  test-app:
    name: Test app
    steps:
      - name: Check out a copy of the repo
        uses: actions/checkout@v2

      - uses: mansona/npm-lockfile-version@v1

      - name: Test
        run: npm test
```
