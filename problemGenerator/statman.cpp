// statman: generates the S_n family of theorems.

#include <cstdio>
#include <cstring>
#include <fstream>
#include <iostream>

#include "formula.h"

//
// Usage: statman -from n0 -to n [-n] [-step num]
//
// Generates all the formulae S_n0, S_(n0+1), ..., S_n
//
// -n: generates formulae w/o implication and conjunction
// -step num: jumps some numbers according to the num
//

void usage()
{
  cout << "Usage: statman -from n0 -to n [-n] [-step num]" << endl;
  return;
}

int main(int argc, char **argv)
{
  int arg, n0 = -1, nn = -1, step = 1;
  bool syntax = false, neg = false, has_step = false;

  for (arg = 1; ! syntax && arg < argc; arg++) {
    if (strcmp(argv[arg], "-from") == 0) {
      if (arg+1 < argc) {
	n0 = atoi(argv[arg+1]);
	arg++;
      }
      else
	syntax = true;
    }
    else if (strcmp(argv[arg], "-to") == 0) {
      if (arg+1 < argc) {
	nn = atoi(argv[arg+1]);
	arg++;
      }
      else
	syntax = true;
    }
    else if (strcmp(argv[arg], "-step") == 0)
    {
      if (arg+1 < argc) {
        has_step = true;
	step = atoi(argv[arg+1]);
	arg++;
      }
      else
	syntax = true;
    }
    else if (strcmp(argv[arg], "-n") == 0) {
      neg = true;
    }
    else
      syntax = true;
  }

  if (n0 < 1 || nn < 1 || n0 > nn) {
    cout << "Error: n0 and n must be greater than zero and n0 < n" << endl;
    syntax = true;
  }

  if (has_step && ((step > nn-n0) || (step < 1))) {
    cout << "Error: step must be greater than 1 and lower than n-n0" << endl;
    syntax = true;
  }

  if (syntax) {
    usage();
    return 1;
  }

  // counts the number of digits in the bigger problem
  int digitsBigger =0, aux_n = nn;
  for (; aux_n>0; aux_n=((int)(aux_n/10))){
    digitsBigger++;
  }

  int n;
  for (n = n0; n <= nn; n+=step) {
    vector<Formula *> A, B, F;

    unsigned int k, j;
    for (k = 0; k < (unsigned int) n-1; k++) {
      vector<Formula *> vAND;
      for (j = 0; j <= k; j++) {
	char cj[10], dj[10];
	sprintf(cj, "c%d", j);
	sprintf(dj, "d%d", j);
	if (! neg)
	  vAND.push_back(new Formula(Formula::OR,
				     new Formula(cj),
				     new Formula(dj)));
	else
	  vAND.push_back(new Formula(Formula::NOT,
				     new Formula(Formula::OR,
						 new Formula(cj),
						 new Formula(dj))));
      }
      if (! neg) {
	if (vAND.size() == 1)
	  F.push_back(vAND[0]);
	else if (vAND.size() == 2)
	  F.push_back(new Formula(Formula::AND, vAND[0], vAND[1]));
	else
	  F.push_back(new Formula(Formula::ANDN, vAND));
      }
      else {
	if (vAND.size() == 1)
	  F.push_back(new Formula(Formula::NOT, vAND[0]));
	else if (vAND.size() == 2)
	  F.push_back(new Formula(Formula::NOT,
				  new Formula(Formula::OR, vAND[0], vAND[1])));
	else
	  F.push_back(new Formula(Formula::NOT,
				  new Formula(Formula::ORN, vAND)));
      }
    }

    for (j = 0; j < (unsigned int) n; j++) {
      char cj[10], dj[10];
      sprintf(cj, "c%d", j);
      sprintf(dj, "d%d", j);
      if (j == 0) {
	A.push_back(new Formula(cj));
	B.push_back(new Formula(dj));
      }
      else {
	if (! neg) {
	  A.push_back(new Formula(Formula::IMPLIES,
				  F[j-1], new Formula(cj)));
	  B.push_back(new Formula(Formula::IMPLIES,
				  F[j-1], new Formula(dj)));
	}
	else {
	  A.push_back(new Formula(Formula::OR,
				  new Formula(Formula::NOT, F[j-1]),
				  new Formula(cj)));
	  B.push_back(new Formula(Formula::OR,
				  new Formula(Formula::NOT, F[j-1]),
				  new Formula(dj)));
	}
      }
    }


        int digitsThis =0, aux_n = n;
    for (; aux_n>0; aux_n=((int)(aux_n/10))){
      digitsThis++;
    }

    char zeroes[30];
    int ii, size=0;
    for (ii=0; ii<(digitsBigger-digitsThis); ii++){
       zeroes[ii]='0';
       size ++;
    }
    zeroes[size]=0;
//    cout << zeroes << " " << n << "\n";

    char filename[30];
    if (! neg)
      sprintf(filename, "statman_%s%d.prove", zeroes, n);
    else
      sprintf(filename, "statman_n_%s%d.prove", zeroes, n);

    ofstream f(filename);

    vector<Formula *> X;
    for (j = 0; j < (unsigned int) n; j++)
      X.push_back(new Formula(Formula::OR, A[j], B[j]));
    
    char cn[10], dn[10];
    sprintf(cn, "c%d", n-1);
    sprintf(dn, "d%d", n-1);

    X.push_back(new Formula(Formula::OR,
					new Formula(cn),
					new Formula(dn)));

    for (j = 0; j < X.size()-1; j++)
      f << "T" << X[j]->toString() << endl;
   f << "F" << X[X.size()-1]->toString() << endl;

    f.close();
  }

  return 0;
}
