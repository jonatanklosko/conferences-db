#!/bin/bash

pandoc docs.md -o output/docs.pdf -V geometry:"top=1.5cm, bottom=1.5cm, left=1cm, right=1cm"
