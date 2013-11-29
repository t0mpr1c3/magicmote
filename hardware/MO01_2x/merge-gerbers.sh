cp ../MO01/MO01.* .
cp ../MO01_2x_outline/MO01_2x_outline.* .
rm *.s??
rm *.b??
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl MO01_2x_outline MO01 -1182 0
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl MO01_2x_outline_MO01 MO01 -1182 10040
for i in `ls MO01_2x_outline_MO01_MO01.*`
do
  j=`echo $i | sed 's/.*\.//'`
  cp $i MO01_2x.$j
done
rm MO01_2x.zip
tar -czf MO01_2x.zip MO01_2x.*
rm MO01_2x_outline_MO01*
rm MO01.*
rm MO01_2x_outline.*
