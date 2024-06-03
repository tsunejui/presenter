#! /bin/sh

# env:
#  K8S_RESOURCE_REPORT_AUTHOR: report author
#  

current_date=$(date +%Y-%m-%d)

cat << EOF > $OUTPUT_DIR/$MARKDOWN_FILE
---
title: Kubernetes Resource Usage Report
author: ${K8S_RESOURCE_REPORT_AUTHOR}
date: ${current_date}
geometry: "a4paper,left=1cm,right=1cm,top=2cm,bottom=2cm"
---

## Cluster Resource Usage Overview

## Cluster Resource Usage By Node

## Cluster Resource Usage By Namespace

EOF
