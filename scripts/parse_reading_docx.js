const fs = require('fs');
const mammoth = require('mammoth');

async function parse() {
    try {
        const result = await mammoth.extractRawText({ path: '../file_data/DokkaiN3.docx' });
        const text = result.value;
        fs.writeFileSync('dokkai_raw.txt', text);
        console.log('Successfully extracted raw text to dokkai_raw.txt');
    } catch (e) {
        console.error('Error:', e);
    }
}

parse();
