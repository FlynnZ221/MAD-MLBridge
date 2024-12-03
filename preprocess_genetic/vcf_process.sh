for vcf_file in vcfs/*.vcf.gz; do
    base_name=$(basename "$vcf_file" .vcf.gz)
    echo "Filtering $base_name"
    vcftools --gzvcf "$vcf_file" \
        --hwe 0.05 \
        --minGQ 20 \
        --maf 0.01 \
        --max-missing 0.95 \
        --recode \
        --out "filtered_vcfs/${base_name}_filtered"
    echo "Done filtering $base_name"
done