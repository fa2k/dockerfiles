# fastq_screen_with_references

Very big Docker image containing everything you need to run FastQ screen.

To make the docker image:
$ bash build.sh

Usage (example):
$ docker run -v $PWD:/mnt fastq_screen fastq_screen /mnt/FASTQ_FILE_PATH
