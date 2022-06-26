import hscript.Parser;
import hscript.Interp;
import sys.FileSystem;
import sys.io.File;

class Main
{
    static function getScript():String
    {
        var script = File.getContent("script.hx");

        return script;
    }

    static function main()
    {
        var script:String = getScript();

        var parser = new hscript.Parser();
        var program = parser.parseString(script);
        var interp = new hscript.Interp();
        interp.variables.set("Math", Math);
        interp.variables.set("File", File);

        trace(interp.execute(program));

    }
}