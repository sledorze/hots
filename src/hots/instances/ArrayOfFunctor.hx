package hots.instances;

import hots.classes.FunctorAbstract;
import hots.In;
import scuts.core.extensions.Arrays;
import hots.classes.Functor;

using hots.box.ArrayBox;

class ArrayOfFunctor extends FunctorAbstract<Array<In>>
{
  public function new () {}
  
  override public function map<B,C>(of:ArrayOf<B>, f:B->C):ArrayOf<C> {
    return Arrays.map(of.unbox(), f).box();
  }
}