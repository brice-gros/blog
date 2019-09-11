# Blog

# Requierements

 - Python3

# Environment setup

```bash
pip3 install pipenv
pipenv install
# needed for exporting to pdf
curl -sSL https://github.com/tschoonj/GTK-for-Windows-Runtime-Environment-Installer/releases/download/2019-08-05/gtk3-runtime-3.24.10-2019-08-05-ts-win64.exe -o /tmp/gtk3-runtime-3.24.10-2019-08-05-ts-win64.exe && /tmp/gtk3-runtime-3.24.10-2019-08-05-ts-win64.exe && rm /tmp/gtk3-runtime-3.24.10-2019-08-05-ts-win64.exe
```

# Build

The build output dir is `site/`
```bash
pipenv shell
# build the final build with its  downloadable pdf version
./mkdocsbuild.sh
# test the build
pushd site; python -m http.server; popd
```