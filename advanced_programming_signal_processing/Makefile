SHELL = /bin/bash
.PHONY: level1 level2 clean

level1: matching_level1
	@for image in level1/final/*.ppm; do \
		bname=`basename $${image}`; \
		name="imgproc/"$${bname}; \
		convert $${image} $${name}; \
	done
	@time (./matching_level1 level1 > result.txt) 2>> result.txt
	@./answer_final.sh result level1

matching_level1: main_level1.cu imageUtil.cu
	nvcc -w -O3 -o matching_level1 main_level1.cu imageUtil.cu -lm

matching_level2: main_level2.cu imageUtil.cu
	nvcc -w -O3 -o matching_level2 main_level2.cu imageUtil.cu -lm

level2: matching_level2
	@for image in level2/final/*.ppm; do \
		bname=`basename $${image}`; \
		name="imgproc/"$${bname}; \
		convert $${image} $${name}; \
	done
	@time (./matching_level2 level2 > result.txt) 2>> result.txt
	@./answer_final.sh result level2

clean:
	$(RM) matching
