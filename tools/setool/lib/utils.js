const fs = require('fs');
const path = require('path');

module.exports = {
    checkDir: (pathlist) => {
        const dirpath = path.join(...pathlist);
        return fs.existsSync(dirpath);
    },
    createDir: (pathlist) => {
        const dirpath = path.join(...pathlist);
        if (!fs.existsSync(dirpath)) {
            fs.mkdirSync(dirpath);
        }
    },
    createFile: (pathlist, content) => {
        const filepath = path.join(...pathlist);
        fs.writeFileSync(filepath, content);
    },
    readFile: (pathlist) => {
        const filepath = path.join(...pathlist);
        return fs.readFileSync(filepath).toString();
    },
    currentDate: () => {
        return new Date().toISOString().slice(0, 10);
    },
    capitalize: (s) => {
        if (typeof s !== 'string') return '';
        return s.charAt(0).toUpperCase() + s.slice(1);
    }
};