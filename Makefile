markdowns:=$(wildcard *.md)



all: $(addprefix build/,$(markdowns:.md=.pdf))



build/%.pdf: %.md
	@mkdir -p $(dir $@)
	pandoc --pdf-engine=xelatex -V mainfont="PingFang SC"  -o $@ $<
