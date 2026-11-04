/* Ensure ARM Bionic's minimum 32-byte PT_TLS alignment for the 32-bit stage.
 * Matches the existing exp32/tls_align.S helper used by other Samsung targets.
 */
.section .tdata,"awT",%progbits
.p2align 5
.global exp32_tls_align_anchor
exp32_tls_align_anchor:
  .word 0
