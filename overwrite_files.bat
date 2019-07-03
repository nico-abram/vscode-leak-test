echo off
echo "0" > file1.log
echo "1" > file1.log
for /l %%x in (1, 1, 100000) do echo "%%x \t%%x \t%%x \t%%x \t%%x \t" >> file1.log
for /l %%x in (2, 1, 100000) do echo "%%x \t%%x \t%%x \t%%x \t%%x \t" >> file2.log
git diff --no-index file1.log file2.log > log.diff