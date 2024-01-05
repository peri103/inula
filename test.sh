for file in $(find packages/inula/scripts/__tests__ -type f -name '*.test.js'); do
    filename=$(basename "$file" .test.js)
    describe_line=$(grep -m 1 '^describe(' "$file")
    describe_argument=$(echo "$describe_line" | sed -n 's/.*describe(\(.*\),.*/\1/p' | tr -d "[:space:]'")

    echo "describe_argument is $describe_argument"
    echo "filename is $filename"

    if [ "$describe_argument" == "$filename"Test ]; then
    echo "describe() first argument in $file matches the file name."
    else
    echo "describe() first argument in $file does not match the file name."
    exit 1
    fi
done