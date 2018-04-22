README.md:
	touch README.md
	echo "### Guessing Game" > README.md
	echo -e "\nLast time make was run: " >> README.md
	date +%F\ %T >> README.md
	echo -e "\nNumber of lines in guessinggame.sh:" >> README.md
	less guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
