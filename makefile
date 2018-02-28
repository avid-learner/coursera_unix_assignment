all: README.md

README.md:
	touch README.md
	echo "# Peer-graded Assignment: Bash, Make, Git and GitHub" > README.md
	echo "" >> README.md
	echo -n "* " >> README.md
	date +"%m-%d-%Y %T" >> README.md
	echo -n "* " >> README.md
	wc -l <guessinggame.sh >> README.md

clean:
	rm README.md
