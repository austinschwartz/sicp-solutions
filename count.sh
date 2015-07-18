totals=(46 97 82 79 52)
chapters=(1 2 3 4 5)
name=README.txt
rm ${name}
echo "Structure and Interpretion of Computer Programs\nIn Scheme\n" >> ${name}
for (( i=0; i<5; i++  ))
do
  x=`echo */* | tr " " "\n" | grep  -E "((ch${chapters[$i]}.*)(scm)$)" | wc -l | bc`
  echo "ch${chapters[$i]} - ${x} / ${totals[$i]}" >> ${name}
done

total=0
for i in ${totals[@]}; do
  let total+=$i
done

echo "\nTotal" >> ${name}
echo */* | tr ' ' '\n' | grep -E "((\w*)(scm)$)" | wc -l | bc | tr -d "\n" >> ${name}
echo " / ${total} problems\n" >> ${name}

cat ${name}
