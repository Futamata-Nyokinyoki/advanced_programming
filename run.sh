#!/bin/sh
# imagemagick�ŉ����摜���������āC/imgproc�ɂ������݁C�e���v���[�g�}�b�`���O
for image in $1/test/*.ppm; do
    bname=`basename ${image}`
    name="imgproc/"$bname
    x=0    	#
    echo $name
    convert "${image}" $name  # �������Ȃ��摜����
#   convert -blur 2x6 "${image}" "${name}"
#    convert -median 3 "${image}" "${name}"
    rotation=0
    echo $bname:
    for template in $1/*.ppm; do
	echo `basename ${template}`
	if [ $x = 0 ]
	then
	    ./matching $name "${template}" rotation 0.5 cpg&
	    x=1
	else
	    ./matching $name "${template}" rotation 0.5 pg&
	fi
    done
    echo ""
done
wait
