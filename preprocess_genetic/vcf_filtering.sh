cd ../data/SNPs
for folder in *_snps; do
    for vcf_file in "$folder"/*.vcf; do
        # Define output name
        output_file="${vcf_file%.vcf}_filtered"
        
        # Run VCFtools with chosen filters
        vcftools --vcf "$vcf_file" --maf 0.01 --minGQ 20 --hwe 0.05 --max-missing 0.95 --recode --out "$output_file"
    done
done