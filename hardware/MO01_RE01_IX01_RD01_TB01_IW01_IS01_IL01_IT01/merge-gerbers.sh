cp ../MO01_6xI2C_2xDP5050_outline/MO01_6xI2C_2xDP5050_outline.* .
cp ../MO01_RE01_IX01/MO01_RE01_IX01.* .
cp /Users/thomasprice/Documents/eagle/relay/Twin-Relay-Control-Board/hardware/RD01/RD01.* .
cp /Users/thomasprice/Documents/eagle/triac/Twin-triac-control-board/hardware/TB01/TB01.* .
cp /Users/thomasprice/Documents/eagle/i2c/I2C-DS2482-24LCXX/hardware/IW01/IW01.* .
cp /Users/thomasprice/Documents/eagle/i2c/I2C-splitter/hardware/IS01/IS01.* .
cp /Users/thomasprice/Documents/eagle/i2c/I2C-level-shifter/hardware/IL01/IL01.* .
cp /Users/thomasprice/Documents/eagle/i2c/I2C-DS1307-TMP100/hardware/IT01/IT01.* .
rm *.s??
rm *.b??
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl MO01_6xI2C_2xDP5050_outline MO01_RE01_IX01 0 -1483
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl MO01_6xI2C_2xDP5050_outline_MO01_RE01_IX01 RD01 -5498 16369
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl MO01_6xI2C_2xDP5050_outline_MO01_RE01_IX01_RD01 TB01 14187 -3316
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl MO01_6xI2C_2xDP5050_outline_MO01_RE01_IX01_RD01_TB01 IW01 19673 19697
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl MO01_6xI2C_2xDP5050_outline_MO01_RE01_IX01_RD01_TB01_IW01  IS01 29528 29552
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl MO01_6xI2C_2xDP5050_outline_MO01_RE01_IX01_RD01_TB01_IW01_IS01 IL01 19798 29822
perl /Users/thomasprice/Documents/eagle/GerberMerger/GerberMerger.pl MO01_6xI2C_2xDP5050_outline_MO01_RE01_IX01_RD01_TB01_IW01_IS01_IL01 IT01 29528 19552
cp MO01_6xI2C_2xDP5050_outline.GML MO01_RE01_IX01_RD01_TB01_IW01_IS01_IL01_IT01.GML
for i in `ls MO01_6xI2C_2xDP5050_outline_MO01_RE01_IX01_RD01_TB01_IW01_IS01_IL01_IT01.*`
do
  j=`echo $i | sed 's/.*\.//'`
  cp $i MO01_RE01_IX01_RD01_TB01_IW01_IS01_IL01_IT01.$j
done
rm MO01_RE01_IX01_RD01_TB01_IW01_IS01_IL01_IT01.tgz
tar -czf MO01_RE01_IX01_RD01_TB01_IW01_IS01_IL01_IT01.tgz MO01_RE01_IX01_RD01_TB01_IW01_IS01_IL01_IT01.*
rm MO01_6xI2C_2xDP5050_outline_MO01*
rm MO01_RE01_IX01.*
rm MO01_6xI2C_2xDP5050_outline.*
rm RD01.*
rm TB01.*
rm IW01.*
rm IS01.*
rm IL01.*
rm IT01.*
