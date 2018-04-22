README.md:
	touch README.md
	echo "# Guessing Game" > README.md
	echo "*User guesses the number of files in the current directory.*" >> README.md
	echo "### Last time make was run: " >> README.md
	date +%F\ %T >> README.md
	echo "### Number of lines in guessinggame.sh:" >> README.md
	less guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
