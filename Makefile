all: hcsecd

hcsecd:
	cc -O2 -pipe   -I/xj/waitman/hcsecd -std=gnu99 -fstack-protector -Wsystem-headers -Werror -Wall -Wno-format-y2k -Wno-uninitialized -Wno-pointer-sign -Wno-empty-body -Wno-string-plus-int -Wno-unused-const-variable -Wno-tautological-compare -Wno-unused-value -Wno-parentheses-equality -Wno-unused-function -Wno-enum-conversion -Wno-switch -Wno-switch-enum -Wno-knr-promoted-parameter -Qunused-arguments -c hcsecd.c
	lex  -olexer.c lexer.l
	cc -O2 -pipe   -I/xj/waitman/hcsecd -std=gnu99 -fstack-protector -Wsystem-headers -Werror -Wall -Wno-format-y2k -Wno-uninitialized -Wno-pointer-sign -Wno-empty-body -Wno-string-plus-int -Wno-unused-const-variable -Wno-tautological-compare -Wno-unused-value -Wno-parentheses-equality -Wno-unused-function -Wno-enum-conversion -Wno-switch -Wno-switch-enum -Wno-knr-promoted-parameter -Qunused-arguments -c lexer.c
	cc -O2 -pipe   -I/xj/waitman/hcsecd -std=gnu99 -fstack-protector -Wsystem-headers -Werror -Wall -Wno-format-y2k -Wno-uninitialized -Wno-pointer-sign -Wno-empty-body -Wno-string-plus-int -Wno-unused-const-variable -Wno-tautological-compare -Wno-unused-value -Wno-parentheses-equality -Wno-unused-function -Wno-enum-conversion -Wno-switch -Wno-switch-enum -Wno-knr-promoted-parameter -Qunused-arguments -c parser.c
	cc -O2 -pipe   -I/xj/waitman/hcsecd -std=gnu99 -fstack-protector -Wsystem-headers -Werror -Wall -Wno-format-y2k -Wno-uninitialized -Wno-pointer-sign -Wno-empty-body -Wno-string-plus-int -Wno-unused-const-variable -Wno-tautological-compare -Wno-unused-value -Wno-parentheses-equality -Wno-unused-function -Wno-enum-conversion -Wno-switch -Wno-switch-enum -Wno-knr-promoted-parameter -Qunused-arguments  -lbluetooth -o hcsecd hcsecd.o lexer.o parser.o 

clean:
	rm -f *.o
	rm -f hcsecd
