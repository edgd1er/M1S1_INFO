/*
 * testassert.h
 *
 *  Created on: 11 nov. 2014
 *      Author: user
 */

#ifndef TESTASSERT_H_
#define TESTASSERT_H_

#define PRINT_FATAL_ERROR(MSG) \
	{ \
		fprintf(stderr, MSG "\n"); \
		fflush(stdout); \
		fflush(stderr); \
		exit(EXIT_FAILURE); \
	}

#define PRINT_DEFINE_ERROR_VALUE(VARIABLE, VALUE) \
	{ \
		fprintf(stderr, "Erreur, recompiler la librairie avec la variable %s défini avec la valeur  %d dans le fichier %s\n", #VARIABLE, VALUE, __FILE__); \
		fflush(stdout); \
		fflush(stderr); \
		exit(EXIT_FAILURE); \
	}

#define PRINT_ASSERT_ERROR_MSG(COND, MSG) \
	if(!(COND)) {\
		PRINT_FATAL_ERROR(MSG); \
		exit(EXIT_FAILURE); \
	}

#endif /* TESTASSERT_H_ */
