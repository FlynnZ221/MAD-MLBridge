# Directory with .zip files
cd ../data/SNPs

# Unzip all .zip files into separate folders
for file in *.zip; do
    unzip "$file" -d "${file%.zip}"
done
