#!/bin/bash

Rscript ${1}.R

mv Rplots.pdf  $1.pdf

open $1.pdf
