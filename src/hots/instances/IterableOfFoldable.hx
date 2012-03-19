package hots.instances;

import hots.classes.FoldableAbstract;
import hots.In;
import scuts.core.extensions.IterableExt;
import hots.classes.Foldable;

using hots.macros.Box;

class IterableOfFoldable extends FoldableAbstract<Iterable<In>> 
{
  public function new () {}
  
  override public inline function foldRight <A,B>(f:A->B->B, b:B, value:IterableOf<A>):B  {
    return IterableExt.foldRight(value.unbox(), f, b);
  }
  
  override public inline function foldLeft <A,B>(f:A->B->A, b:A, value:IterableOf<B>):A {
    return IterableExt.foldLeft(value.unbox(), f, b);
  }
  
}