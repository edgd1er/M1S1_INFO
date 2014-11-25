#include <stdio.h>
#include <string.h>
#include <stdlib.h>
void f_pong(void *arg);
#include "libcontext.h"


void f_ping(void *arg);
void f_ping2(void *arg);
void f_pong2(void *arg);

struct ctx_s ctx_ping; 
struct ctx_s ctx_pong;


/* liste des contextes */
struct ctx_s ctx_ring;

int main()
{
	/*init_ctx(&ctx_ping, 16384, f_ping, NULL);
    init_ctx(&ctx_pong, 16384, f_pong, NULL);*/

	create_ctx(16384, f_ping2, NULL);
	create_ctx(16384, f_pong2, NULL);

	/* switch_to_ctx(&ctx_ping); */
	/*yield(); */
	start_sched();
	exit(EXIT_SUCCESS);
}

void f_ping(void *args) {
	while (1) {
		printf("A");
		printf("B");
		printf("C");
	}
}

void f_ping2(void *args) {
	int i;
	for (i = 0; i < 500; i++) {
		printf("A");
		printf("B");
		printf("C");
	}
}

void f_pong(void *args) {
	while (1) {
		printf("1");
		printf("2");
	}
}
void f_pong2(void *args) {
	int i;
	for (i = 0; i < 50; i++) {
		printf("1");
		printf("2");
	}

}