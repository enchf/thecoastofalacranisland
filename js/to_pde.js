var fs   = require('fs');
var util = require('util');
var minx = Number.MAX_VALUE;
var miny = Number.MAX_VALUE;
var maxx = 1200;
var maxy = 800;
var offx = 200;
var offy = 150;

var file = process.argv[2];
var ext  = process.argv[3] || 'out';
var out  = filename(file) + '.' + ext;

function filename(f) {
    var idx = f.lastIndexOf('.');
    return f.substring(0, idx > 0 ? idx : f.length);
}

function reduceCoord(val,i) {
    if (i > 1) return val;
    var num = Math.abs(parseFloat(val));
    var dec = parseInt(((num - parseInt(num)) * 100000) % 10000);
    if (i == 0) minx = Math.min(minx, dec);
    else        miny = Math.min(miny, dec);
    return dec;
}

function minimize(val, i) {
    var min, off, max;
    if (i == 0) {
        min = minx;
        max = maxx;
        off = offx;
    } else {
        min = miny;
        max = maxy;
        off = offy;
    }
    return max - (val - min) - off;
}

function polygonToPDE(data) {
    var points = data.split(' ');
    var instrs = [];
    var point;
    var sep;

    points = points.map(function(value) { return value.split(',').map(reduceCoord); });
    points = points.map(function(row)   { return row.map(minimize); });

    for (var i = 0; i < points.length; i++) {
        point = points[i];
        sep = i % 3 == 2 ? '\n' : '';
        instrs.push(util.format('{%d,%d},%s',point[0],point[1],sep));
    }

    return '{' + instrs.join('') + '}';
}

fs.readFile(file, 'utf8', function(err,data) {
    if (err) {
        return console.log(err);
    }

    fs.writeFile(out, polygonToPDE(data), function(err) {
        if (err) {
            return console.log(err);
        }
        console.log('Process completed');
    });
});
