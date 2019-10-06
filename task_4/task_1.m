in = fopen('Pushkin-utf.txt','rt');
out = fopen('output-utf.txt','w');

i = 0;
char_num = 0;
words_num = 0;
warning("off");

max_string = 0;
min_string = 0;
max_string_ans = "";
min_string_ans = "";

while !feof(in)
  s1 = fgets(in);
  
  s1 = strrep(s1, "--", "-");
  s1 = strrep(s1, "балд", "Балд");
  
  if (length(s1) > 1)
    s1(1:2) = upper(s1(1:2));
  endif
  
  s_dot = findstr(s1, ".");
  for j = s_dot
    if (length(s1(j : length(s1))) > 3)
      s1(j + 2 : j + 3) = upper(s1(j + 2 : j + 3));
    endif
  endfor
  
  s_excls = findstr(s1, "!");
  for j = s_excls
    if (length(s1(j : length(s1))) > 3)
      s1(j + 2 : j + 3) = upper(s1(j + 2 : j + 3));
    endif
  endfor
  
  s_quest = findstr(s1, "?");
  for j = s_quest
    if (length(s1(j : length(s1))) > 3)
      s1(j + 2 : j + 3) = upper(s1(j + 2 : j + 3));
    endif
  endfor
  
  s_quote = findstr(s1, "\"");
  for j = s_quote
    if (length(s1(j : length(s1))) > 2)
      s1(j + 1 : j + 2) = upper(s1(j + 1 : j + 2));
    endif
  endfor
  
  
  fprintf(out, '%s', s1);
  
  i++;
  string_length = length(s1) / 2;
  char_num = char_num + string_length;
  
  
  if (length(s1) > 2)
    words_num = words_num + length(findstr(s1, " ")) + 1;
  endif
  
  if (string_length > max_string)
    max_string = string_length;
    max_string_ans = s1;
  endif
  
  if ((string_length < min_string && string_length > 1) || min_string == 0)
    min_string = string_length;
    min_string_ans = s1;
  endif
end

fprintf(out, '\n\nКоличество:\nСтрок - %d\nСлов - %d\nСимволов - %d', i,
        words_num, char_num);

fprintf(out, '\n\nСамая длинная строка - %d символов:\n%s', 
        max_string, max_string_ans)
fprintf(out, '\nСамая короткая строка - %d символов:\n%s', 
        min_string, min_string_ans)
        
fprintf(out, '\n\nСреднее количество символов в строке - %d', char_num / i)
      
        
fclose(in);
fclose(out);