# Parse Biosciences pipeline

Requires zip file ParseBiosciences-Pipeline.1.1.2.zip which requires authorization to download 🤦.

Build:

    export DOCKER_DEFAULT_PLATFORM=linux/amd64
    docker build -t spipe .

Genome build:

    wget https://ftp.ensembl.org/pub/release-109/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz
    wget https://ftp.ensembl.org/pub/release-109/gtf/homo_sapiens/Homo_sapiens.GRCh38.109.gtf.gz
    docker run -ti --rm -v $PWD:$PWD -w $PWD spipe \
        split-pipe \
            --mode mkref \
            --genome_name hg38 \
            --fasta Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz \
            --genes Homo_sapiens.GRCh38.109.gtf.gz \
            --output_dir hg38


