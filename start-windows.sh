#!/bin/sh

set -eu

python -m venv --upgrade-deps .venv
source .venv/Scripts/activate
pip install -U --disable-pip-version-check --editable .[non-termux]
python -m proxy_scraper_checker
