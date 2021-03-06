package hots.instances;
import hots.classes.MonadAbstract;
import hots.classes.Monad;
import hots.instances.ArrayTOfApplicative;

import hots.In;
import hots.Of;
import scuts.core.extensions.Arrays;

using hots.box.ArrayBox;


class ArrayTOfMonad<M> extends MonadAbstract<Of<M,Array<In>>> {
  
  var monadM:Monad<M>;

  public function new (monadM:Monad<M>, app) 
  {
    super(app);
    this.monadM = monadM;
  }
  
  override public function flatMap<A,B>(val:ArrayTOf<M,A>, f: A->ArrayTOf<M,B>):ArrayTOf<M,B> 
  {
    function flatMapInner (a:Array<A>):Of<M, Array<B>>
    {
      var res = [];
      function pushElems (x:Array<B>) for (e2 in x) res.push(e2);
      
      for (e1 in a) 
      {
        monadM.map(f(e1).unboxT(), pushElems);
      }
      return monadM.pure(res);
    }

    return monadM.flatMap(val.unboxT(), flatMapInner).boxT();
  }
}
