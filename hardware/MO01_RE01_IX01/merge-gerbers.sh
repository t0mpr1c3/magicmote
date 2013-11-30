cp ../MO01/MO01.* .
cp ../MO01_2xI2C_outline/MO01_2xI2C_outline.* .
cp /Users/thomasprice/Documents/eagle/rotary-encoder-breakout/hardware/RE01/RE01.* .
cp /Users/thomasprice/Documents/eagle/i2c/I2C-extender/hardware/IX01/IX01.* .
rm *.s??
rm *.b??
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl MO01_2xI2C_outline MO01 -1168 291
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl MO01_2xI2C_outline_MO01 RE01 -555 10967
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl MO01_2xI2C_outline_MO01_RE01 IX01 9690 11262
for i in `ls MO01_2xI2C_outline_MO01_RE01_IX01.*`
do
  j=`echo $i | sed 's/.*\.//'`
  cp $i MO01_RE01_IX01.$j
done
rm MO01_RE01_IX01.tgz
tar -czf MO01_RE01_IX01.tgz MO01_RE01_IX01.*
rm MO01_2xI2C_outline_MO01*
rm MO01.*
rm MO01_2xI2C_outline.*
rm RE01.*
rm IX01.*
