import hscript.Parser;
import hscript.Interp;
import sys.FileSystem;
import sys.io.File;

class Main
{
    static function getScript(path:String):String
    {
        var script = File.getContent(path);

        return script;
    }

    static function doFile(daFile:String)
    {

        var parser = new hscript.Parser();
        var program = parser.parseString(daFile);
        var interp = new hscript.Interp();
        interp.variables.set("Math", Math);
        interp.variables.set("File", File);

        trace(interp.execute(program));
    }

    static function main()
    {
        var filesName = ["script.hx", "hello.hx"];

        for (daFile in filesName)
        {
            var script:String = getScript(daFile);
            doFile(script);
        }



    }
}