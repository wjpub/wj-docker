#!/bin/bash
containers='wj-php72 wj-python3 wj-openresty redis mysql8'
suffix="$1"
outname='research_complete_images'
if [ "$1" == "" ]; then
    suffix=$(date +"%Y%m%d")
fi
for name in ${containers[@]}; do
    docker commit $name $name:$suffix
done
imagenames=${containers//\ /:$suffix\ }:$suffix
docker save -o $outname $imagenames
docker rmi -f $imagenames
tar -zcf "$outname.tgz" $outname
rm $outname
echo "DONE."
