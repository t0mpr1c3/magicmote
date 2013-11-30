cp ../MO01/MO01.* .
cp ../MO01_2x_outline/MO01_2x_outline.* .
rm *.s??
rm *.b??
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl MO01_2x_outline MO01 -1182 -1192
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl MO01_2x_outline_MO01 MO01 -1182 8848
for i in `ls MO01_2x_outline_MO01_MO01.*`
do
  j=`echo $i | sed 's/.*\.//'`
  cp $i MO01_2x.$j
done
rm MO01_2x.tgz
tar -czf MO01_2x.tgz MO01_2x.*
rm MO01_2x_outline_MO01*
rm MO01.*
rm MO01_2x_outline.*
