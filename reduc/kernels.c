//
#if defined(__INTEL_COMPILER)
#include <mkl.h>
#else
#include <cblas.h>
#endif

//
#include "types.h"

//Baseline - naive implementation
f64 reduc_base(f64 *restrict a, u64 n)
{
  double d = 0.0;

  for (u64 i = 0; i < n; i++)
    d += a[i];

  return d;
}

f64 reduc_unroll8(f64 *restrict a, u64 n) {

#define UNROLL8 8

    double d = 0.0;

    

    return d;
}
