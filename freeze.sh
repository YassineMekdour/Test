#!/bin/bash
set -e

REQS=requirements.txt

cat requirements-find-links.txt > $REQS

pip freeze |
  grep -v -E 'odoo-addons-test|^pkg-resources' >> $REQS
