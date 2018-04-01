#!/bin/bash

rm -rf dist
rm -rf infoip.egg-info

pandoc --from=markdown --to=rst --output=README.rst README.md

python setup.py sdist bdist_wheel
twine upload --repository-url https://upload.pypi.org/legacy/ dist/*