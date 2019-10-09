
if !exist("input_task_2.txt", "file")
  "File doesn't exist"
else
  in = fopen('input_task_2.txt','rt');
  s = "";
  
  rows_quantity = 0;
  correct_row_length = 0;
  columns_quantity = 0;
  
  flag_correct_rows = true;
  flag_correct_chars = true;
  
  while !feof(in)
    s1 = fgets(in);
    s1_nums_length = length(strsplit(s1, " "));
    
    if (rows_quantity == 0)
      correct_row_length = s1_nums_length
    else
      if (rows_quantity != s1_nums_length)
        flag_correct_rows = false;
      endif
    endif
    
    if (s1_nums_length != length(str2num(s1)))
      flag_correct_chars = false
    endif
    
    rows_quantity = rows_quantity + 1;
    
    s = strcat(s, s1);
  end
  s
  if (length(s) < 1)
    "File is empty"
  endif
  
  if (!correct_row_length)
    "Incorrect quantity of numbers in rows"
  else
    if (rows_quantity + 1 != correct_row_length)
      "Incorrect number of rows and columns"
    else
      if (!flag_correct_chars)
        "incorrect chracters in matrix"
      else
        matrix = str2num(s)
        A = matrix(1 : rows_quantity, 1 : rows_quantity)
        B = matrix(:, rows_quantity + 1)
        if (det(A) == 0)
          "There is no solution"
        else
          X = A \ B
        endif
      endif
    endif
  
  endif
  
endif
