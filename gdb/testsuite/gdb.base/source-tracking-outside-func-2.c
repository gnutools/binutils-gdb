/* This testcase is part of GDB, the GNU debugger.

   Copyright 2026 Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* This comment exists just to move the function foo down the page enough
   that it's definition starts after it's previous closing parenthesis (see
   the -1.c file for where that used to be).  The actual content of the foo
   function has not changed, and this comment adds no real value, it is
   just here to fill the space.  */

int
foo (int var)
{
  return var + 5;	/* Breakpoint here.  */
}

volatile int global_var = 0;

int
main (void)
{
  global_var = global_var + 1;
  global_var = global_var + 1;

  return foo (global_var);
}
