# Escriba su código aquí
cat data.csv > out1.csv
awk '{print gensub(/([0-9][0-9])\/([0-9][0-9])\/([0-9][0-9])/,"20\\3-\\2-\\1",1)}' out1.csv > out2.csv
awk '{gsub(/;N/,";\\N");print}' out2.csv > out3.csv
awk '{print gensub(/(.;.;.;[0-9]{1,})(;)(.)/,"\\1,\\3",1)}' out3.csv > out4.csv
awk '{gsub(/;/,",");print}' out4.csv > out5.csv
awk '{print toupper($0)}' out5.csv > out6.csv
awk '{print gensub(/(,)/,".",4)}' out6.csv > out7.csv
sed '/N/d' out7.csv > base_organizada.csv
rm out*
