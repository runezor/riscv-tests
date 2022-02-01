# See LICENSE for license details.

#*****************************************************************************
# basic.S
#-----------------------------------------------------------------------------
#
# Test add instruction.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64V
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

  TEST_RR_OP( 2,  add, 0x00000000, 0x00000000, 0x00000000 );
  TEST_RR_OP( 3,  add, 0x00000002, 0x00000001, 0x00000001 );
  TEST_RR_OP( 4,  add, 0x0000000a, 0x00000003, 0x00000007 );
  test_ ## 1: \ª
    addi a1, zero, 0;
    addi a1, zero, 0;
    SW a1, a2;
    vle16.v v4, a2;
    vadd.vi v5, v4;
    vse16.v v5, a2;
    LW a1, a2;
    SUBI a1, a1, 16843009;
    bne a1, zero, fail;

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
