markdowns:=$(wildcard *.md)



all: $(addprefix target/,$(markdowns:.md=.pdf))



target/%.pdf: %.md
	@mkdir -p $(dir $@)
	pandoc --pdf-engine=xelatex -V mainfont="PingFang SC"  -o $@ $<
