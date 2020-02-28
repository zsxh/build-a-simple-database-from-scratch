CC=cc

db: db.c
	$(CC) db.c -o db -Wall -Wextra -pedantic -std=c11

run: db
	./db mydb.db

clean:
	rm -f db *.db

format: *.c
	clang-format -style=Google -i *.c
