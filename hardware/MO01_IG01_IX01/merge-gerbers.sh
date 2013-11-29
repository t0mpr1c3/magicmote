cp ../WN01/WN01.* .
cp ../WN01_2xI2C_outline/WN01_2xI2C_outline.* .
cp /Users/thomasprice/Documents/eagle/i2c/I2C-L3G4200D/hardware/IG01/IG01.* .
cp /Users/thomasprice/Documents/eagle/i2c/I2C-extender/hardware/IX01/IX01.* .
rm *.s??
rm *.b??
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl WN01_2xI2C_outline WN01 -1182 0
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl WN01_2xI2C_outline_WN01 WN01 -1182 10040
for i in `ls WN01_2xI2C_outline_WN01_IG01_IX01.*`
do
  j=`echo $i | sed 's/.*\.//'`
  cp $i WN01_IG01_IX01.$j
done
rm WN01_IG01_IX01.zip
tar -czf WN01_IG01_IX01.zip WN01_IG01_IX01.*
rm WN01_2xI2C_outline_WN01*
rm WN01.*
rm WN01_2xI2C_outline.*
rm I?01.*
