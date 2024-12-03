#! /bin/bash

filename1=s21_grep.c
filename2=test1.txt
filename3=no_file.txt
p_filename1=test.txt
p_filename2=test2.txt
p_filename3=test_patterns.txt
echo ---------------------------------------------- *GREP MULTY E MULTY FILES
diff <(grep -e for -e i  "$filename1" "$filename2") <(./s21_grep -e for -e i  "$filename1" "$filename2") -s -q
echo ---------------------------------------------- *GREP MULTY E SINGLE FILES
diff <(grep -e for -e i "$filename1") <(./s21_grep -e for -e i "$filename1") -s -q
echo ---------------------------------------------- *GREP SINGLE E MULTY FILES
diff <(./s21_grep -e for "$filename1" "$filename2") <(grep -e for "$filename1" "$filename2") -s -q
echo ---------------------------------------------- *GREP SINGLE E SINGLE FILES
diff <(./s21_grep -e for "$filename1") <(grep -e for "$filename1") -s -q
echo ---------------------------------------------- *GREP O SINGLE FILES
diff <(./s21_grep -o for "$filename1") <(grep -o for "$filename1") -s -q
echo ---------------------------------------------- *GREP O MULTY FILES
diff <(./s21_grep -o for "$filename1" "$filename2") <(grep -o for "$filename1" "$filename2") -s -q
echo ---------------------------------------------- *GREP S SINGLE FILES
diff <(./s21_grep -s for "$filename1") <(grep -s for "$filename1") -s -q
echo ---------------------------------------------- *GREP S MULTY FILES
diff <(./s21_grep -s for "$filename1" "$filename2") <(grep -s for "$filename1" "$filename2") -s -q
echo ---------------------------------------------- *GREP H SINGLE FILES
diff <(./s21_grep -h for "$filename1") <(grep -h for "$filename1") -s -q
echo ---------------------------------------------- *GREP H MULTY FILES
diff <(./s21_grep -h for "$filename1" "$filename2") <(grep -h for "$filename1" "$filename2") -s -q
echo ---------------------------------------------- *GREP N SINGLE FILES
diff <(./s21_grep -n for "$filename1") <(grep -n for "$filename1") -s -q
echo ---------------------------------------------- *GREP N MULTY FILES
diff <(./s21_grep -n for "$filename1" "$filename2") <(grep -n for "$filename1" "$filename2") -s -q
echo ---------------------------------------------- *GREP L FILES
diff <(./s21_grep -l for "$filename1") <(grep -l for "$filename1") -s -q
echo ---------------------------------------------- *GREP L MULTY FILES
diff <(./s21_grep -l for "$filename1" "$filename2") <(grep -l for "$filename1" "$filename2") -s -q
echo ---------------------------------------------- *GREP C FILES
diff <(./s21_grep -c for "$filename1") <(grep -c for "$filename1") -s -q
echo ---------------------------------------------- *GREP C MULTY FILES
diff <(./s21_grep -c for "$filename1" "$filename2") <(grep -c for "$filename1" "$filename2") -s -q
echo ---------------------------------------------- *GREP V FILES
diff <(./s21_grep -v for "$filename1") <(grep -v for "$filename1") -s -q
echo ---------------------------------------------- *GREP V MULTY FILES
diff <(./s21_grep -v for "$filename1" "$filename2") <(grep -v for "$filename1" "$filename2") -s -q
echo ---------------------------------------------- *GREP I FILES
diff <(./s21_grep -i for "$filename1") <(grep -i for "$filename1") -s -q
echo ---------------------------------------------- *GREP I MULTY FILES
diff <(./s21_grep -i for "$filename1" "$filename2") <(grep -i for "$filename1" "$filename2") -s -q
echo ---------------------------------------------- *GREP F SINGLE FILES
diff <(./s21_grep -f "$p_filename1" "$filename2") <(grep -f "$p_filename1" "$filename2") -s -q
echo ---------------------------------------------- *GREP MULTY F MULTY FILES
diff <(./s21_grep -f "$p_filename1" -f "$p_filename2" "$filename2") <(grep -f "$p_filename1" -f "$p_filename2" "$filename2") -s -q
echo ---------------------------------------------- *GREP MULTY FLAGS 1
diff <(./s21_grep -e regex -e print "$filename1" "$filename2" -c -h -n -l -f "$p_filename3") <(grep -e regex -e print "$filename1" "$filename2" -c -h -n -l -f "$p_filename3") -s -q
echo ---------------------------------------------- *GREP MULTY FLAGS 2
diff <(./s21_grep -cl aboba "$filename1" "$filename2")  <(grep -cl aboba "$filename1" "$filename2") -s -q
echo ---------------------------------------------- *GREP MULTY FLAGS 3
diff <(./s21_grep -e regex -e print "$filename1" "$filename2" -v -n -f "$p_filename3") <(grep -e regex -e print "$filename1" "$filename2" -v -n -f "$p_filename3") -s -q
echo ---------------------------------------------- *GREP MULTY FLAGS 4
diff <(./s21_grep hello "$filename2" -iv) <(grep hello "$filename2" -iv) -s -q
echo ---------------------------------------------- *GREP MULTY FLAGS 5
diff <(./s21_grep -e for -e int "$filename1" "$filename2" -h -o) <(grep -e for -e int "$filename1" "$filename2" -h -o) -s -q
echo ---------------------------------------------- *GREP MULTY FLAGS 6
diff <(./s21_grep -e for -e int "$filename1" "$filename2" "$filename3" -n -o -i -s) <(grep -e for -e int "$filename1" "$filename2" "$filename3" -n -o -i -s) -s -q
echo ---------------------------------------------- *GREP NEWLINE CASE
diff <(./s21_grep -e ^int -e ^if "$filename1" "$filename2" "$filename3" -n) <(grep -e ^int -e ^if "$filename1" "$filename2" "$filename3" -n) -s -q









