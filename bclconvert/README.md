# BCL Convert from Illumina

To use this Dockerfile, download and place the BCL Convert RPM file in the
current directory. It installs the RPM in Oracle Linux 8.

The Dockerfile has hardcoded the major version of BCL Convert, and may need
to be modified.

Download:

https://support.illumina.com/sequencing/sequencing_software/bcl-convert/downloads.html

Then run:

    docker build -t bclconvert --platform=linux/amd64 .

(Platform is only required when running docker on non-x86, like ARM64.)

BCL Convert docs:

User Guide (simple): https://support.illumina.com/downloads/bcl-convert-user-guide.html

DRAGEN Docs - command line options: https://support-docs.illumina.com/SW/dragen_v42/Content/SW/DRAGEN/CommandLineOptions.htm


