for x in `ls`
do 
  fileName=`echo $x | awk -F. '{ print $1 }'`
  if [ -d $fileName ]
  then 
      echo "**************inside IF BLOCK************"
      rm -rf $fileName
  fi
  mkdir -p $fileName/$fileName
  cp -r $x $fileName/$fileName
done

