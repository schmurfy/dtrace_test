#include <stdio.h>

#include "probes.h"

int main (int argc, char const *argv[])
{
  APP_DID_SOMETHING(43, "hello");
  return 0;
}
