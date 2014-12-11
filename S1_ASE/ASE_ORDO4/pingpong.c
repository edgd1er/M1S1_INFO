#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "libcontext.h"


void f_ping(void);
void f_pong(void);
void f_ping2(void);
void f_pong2(void);

/* struct ctx_s ctx_ping; */
/* struct ctx_s ctx_pong; */



int main()
{
	/*init_ctx(&ctx_ping, 16384, f_ping, NULL);
    init_ctx(&ctx_pong, 16384, f_pong, NULL);*/

	create_ctx(16384,(func_t) f_ping2, NULL);
	create_ctx(16384,(func_t) f_pong2, NULL);

	/* switch_to_ctx(&ctx_ping); */
	yield();
	/* start_sched();*/
	exit(EXIT_SUCCESS);
}

void f_ping(void) {
	while (1) {
		printf("A");
		printf("B");
		printf("C");
		yield();
	}
}

void f_ping2(void) {
	int i;
	for (i = 0; i < 500; i++) {
		printf("A");
		printf("B");
		printf("C");
		yield();
	}
}

void f_pong(void) {
	while (1) {
		printf("1");
		printf("2");
		yield();
	}
}
void f_pong2(void) {
	int i;
	for (i = 0; i < 500; i++) {
		printf("1");
		printf("2");
		yield();
	}

}
