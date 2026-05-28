# Bash Test Operators Table

| Operator | Meaning | Example |
|---------|----------|---------|
| [ -e ](ca://s?q=Test_-e_w_bash) | File or directory exists | `[ -e file ]` |
| [ -f ](ca://s?q=Test_-f_w_bash) | Regular file | `[ -f file ]` |
| [ -d ](ca://s?q=Test_-d_w_bash) | Directory | `[ -d dir ]` |
| [ -L ](ca://s?q=Test_-L_w_bash) | Symbolic link | `[ -L link ]` |
| [ -r ](ca://s?q=Test_-r_w_bash) | File is readable | `[ -r file ]` |
| [ -w ](ca://s?q=Test_-w_w_bash) | File is writable | `[ -w file ]` |
| [ -x ](ca://s?q=Test_-x_w_bash) | File is executable | `[ -x file ]` |
| [ -z ](ca://s?q=Test_-z_w_bash) | String is empty | `[ -z "$str" ]` |
| [ -n ](ca://s?q=Test_-n_w_bash) | String is not empty | `[ -n "$str" ]` |
| [ n1 -eq n2 ](ca://s?q=Test_-eq_w_bash) | Numbers are equal | `[ 5 -eq 5 ]` |
| [ n1 -gt n2 ](ca://s?q=Test_-gt_w_bash) | Greater than | `[ 7 -gt 3 ]` |
| [ n1 -lt n2 ](ca://s?q=Test_-lt_w_bash) | Less than | `[ 2 -lt 9 ]` |
| [ file1 -nt file2 ](ca://s?q=Test_-nt_w_bash) | Newer file | `[ a -nt b ]` |
| [ file1 -ot file2 ](ca://s?q=Test_-ot_w_bash) | Older file | `[ a -ot b ]` |
| [ ! expr ](ca://s?q=Operator_!_w_bash) | Negation | `[ ! -f file ]` |
| [ expr1 -a expr2 ](ca://s?q=Operator_-a_w_bash) | AND | `[ -f a -a -r a ]` |
| [ expr1 -o expr2 ](ca://s?q=Operator_-o_w_bash) | OR | `[ -f a -o -d a ]` |