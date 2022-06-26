var x = 10;

for (i in 0...10)
    x++;

var y = x / 3;

trace("before da math" + y);

trace("after da math : " + Math.round(y));

trace(File.getContent("build.hxml"));