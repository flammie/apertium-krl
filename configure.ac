AC_PREREQ(2.52)

AC_INIT([Apertium Karelian], [0.0.0], [flammie@iki.fi], [apertium-krl], [http://wiki.apertium.org/wiki/Apertium-krl])
AM_INIT_AUTOMAKE

AC_PROG_LN_S
AC_PROG_AWK

m4_define([required_apertium_version], [3.4.0])
m4_define([required_lttoolbox_version], [3.3.2])

PKG_CHECK_MODULES(APERTIUM, apertium >= required_apertium_version)
PKG_CHECK_MODULES(LTTOOLBOX, lttoolbox >= required_lttoolbox_version)

AC_PATH_PROG([CGCOMP], [cg-comp], [false], [$PATH$PATH_SEPARATOR$with_cg_comp/bin])
AS_IF([test x$CGCOMP = xfalse], [AC_MSG_ERROR([You don't have cg-comp installed])])


AP_MKINCLUDE

AC_OUTPUT([Makefile apertium-krl.pc])

AC_MSG_ERROR([moved to https://github.com/apertium/apertium-krl])
