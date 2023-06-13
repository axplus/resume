markdowns:=$(wildcard *.md)



all: $(markdowns:.md=.pdf)



%.pdf: %.md
	pandoc --pdf-engine=xelatex -V mainfont="PingFang SC"  -o $@ $<
