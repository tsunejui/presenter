---
title: Example Markdown Page
author: Rex Wu
date: "2024-01-01"
geometry: "a4paper,left=1cm,right=1cm,top=2cm,bottom=2cm"
---

## Example Markdown Page

### Hello Presenter!

> This is a testing alert

- This is a testing item 
- This is a testing item 
- This is a testing item 
- This is a testing item 

### Try using `pandoc` to convert markdown file to pdf file

Run the following shell:

```shell
pandoc /example/README.md -o /example/example.pdf --pdf-engine=xelatex

or 

docker run -v ./example:/example pandoc/latex:3.2 /example/README.md -o /example/example.pdf --pdf-engine=xelatex
```

### Try using `grip` to convert markdown file to html

Run the following shell:

```shell
grip example/README.md --export example/readme.html
```

> pandoc image format: https://pandoc.org/MANUAL.html#images

Name | Image
-----|------------
rex | ![](/example/rex.png "testing image"){ width=100px }