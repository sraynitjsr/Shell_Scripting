#!/bin/bash

# Check if OpenSSL is installed
if ! command -v openssl &> /dev/null; then
    echo "OpenSSL is not installed. Please install it first."
    exit 1
fi

# Set the common name (CN) for the certificate
common_name="example.com"

# Set the output directory
output_dir="."

# Set the key and certificate filenames
key_file="$output_dir/private_key.pem"
cert_file="$output_dir/certificate.pem"

# Generate private key
openssl genpkey -algorithm RSA -out "$key_file"

# Generate certificate signing request (CSR)
openssl req -new -key "$key_file" -out "$output_dir/csr.pem" -subj "/CN=$common_name"

# Self-sign the CSR to generate the certificate
openssl x509 -req -in "$output_dir/csr.pem" -signkey "$key_file" -out "$cert_file"

# Clean up the CSR file
rm "$output_dir/csr.pem"

echo "TLS key and certificate generated successfully:"
echo "Private Key: $key_file"
echo "Certificate: $cert_file"
