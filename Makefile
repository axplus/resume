chapters=$(wildcard src/*.md)



all: README.md

README.md: $(chapters)
	python3 -mmybook merge -o$@ $(dir $<)


split: README.md
	python3 -mmybook split -Osrc $<
