#!/bin/bash

chmod 777 *

java -Xmx50g -jar StableFeatureSelection.jar Datasets/D1.txt yes 0.03 0.9 0.1 5 10 ranked_genes.info 0















