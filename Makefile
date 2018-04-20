chapters=$(wildcard src/*.md)



all: README.md

README.md: $(chapters)
	python -mmybook merge -o$@ $(dir $<)


split: README.md
	$(RM) src/*.md
	python -mmybook split -Osrc $<
