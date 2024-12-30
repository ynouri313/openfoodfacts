//Script fournis par ChatGPT pour changer le format string de categories pour un array
const fs = require('fs');
const readline = require('readline');

// Paths for input and output files
const inputFile = 'data/mongodb/ingredients copy.jsonl';
const outputFile = 'data/mongodb/ingredients_transformed.jsonl';

// Create a write stream for the output file
const outputStream = fs.createWriteStream(outputFile);

// Create a readline interface to read the input file line by line
const rl = readline.createInterface({
    input: fs.createReadStream(inputFile),
    output: process.stdout,
    terminal: false
});

// Process each line in the input file
rl.on('line', (line) => {
    const data = JSON.parse(line);

    // Transform "categories" string into an array
    if (data.categories) {
        data.categories = data.categories.split(',').map((category) => category.trim());
    }

    // Write the transformed object as a JSON line to the output file
    outputStream.write(JSON.stringify(data) + '\n');
});

rl.on('close', () => {
    outputStream.end();
    console.log('Transformation complete. Output saved to', outputFile);
});
