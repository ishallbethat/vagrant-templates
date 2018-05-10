#!/bin/bash
curl -L -O https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.2.4.tar.gz
tar -xvf elasticsearch-6.2.4.tar.gz
cd elasticsearch-6.2.4/bin
nohup ./elasticsearch -Ecluster.name=es_cluster -Enode.name=es_node 1>es.log 2> es.err.log &
