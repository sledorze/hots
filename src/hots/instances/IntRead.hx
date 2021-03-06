package hots.instances;
import hots.classes.Read;
import hots.classes.ReadAbstract;
import scuts.Scuts;

class IntRead extends ReadAbstract<Int> {
  
  public function new () {}
  
  override public function read (v:String):Int {
    var val = Std.parseInt(v);
    return if (val == null) {
      Scuts.error("cannot convert String '" + v + "' to Int");
    } else {
      val;
    }
  }
}
