matching: level1 level2 level7

level1: main_level1.c imageUtil.c
	gcc -w -O3 -o matching_level1 main_level1.c imageUtil.c -lm -mtune=native

level2: main_level2.c imageUtil.c
	gcc -w -O3 -o matching_level2 main_level2.c imageUtil.c -lm -mtune=native

level7: main_level7.c imageUtil.c
	gcc -w -O3 -o matching_level7 main_level7.c imageUtil.c -lm -mtune=native

clean:
	$(RM) matching
