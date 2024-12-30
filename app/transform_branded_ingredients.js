const fs = require('fs');
const readline = require('readline');

// Paths for input and output files
const inputFile = 'data/mongodb/brandedDownload.jsonl';
const outputFile = 'data/mongodb/brandedDownload_transformed.jsonl';

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

    // Extract only the fields you need
    const transformedData = {
        description: data.description,
        foodNutrients: data.foodNutrients.map(nutrient => ({
            name: nutrient.nutrient?.name,
            rank: nutrient.nutrient?.rank,
            amount: nutrient.amount
        }))
    };

    // Write the transformed object as a JSON line to the output file
    outputStream.write(JSON.stringify(transformedData) + '\n');
});

rl.on('close', () => {
    outputStream.end();
    console.log('Transformation complete. Output saved to', outputFile);
});
