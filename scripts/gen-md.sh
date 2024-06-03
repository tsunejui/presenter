#! /bin/sh

# usage:
#  ./scripts/gen-md.sh example,kubernetes-resource templates data/markdown

templates=$1
input_dir=$2
output_dir=$3

if [ -z "$1" ]; then
  echo "Usage: $0 template1,template2,template3,..."
  exit 1
fi

IFS=',' read -r -a params <<< "$1"

for param in "${params[@]}"; do
    echo "==========="
    echo "genrate markdown: $param"
    export OUTPUT_DIR="$output_dir/$param"
    export TEMPLATE_FILE="$param.sh"
    export MARKDOWN_FILE="README.md"
    
    mkdir -p $OUTPUT_DIR
    sh $input_dir/$TEMPLATE_FILE
    echo "done"
done