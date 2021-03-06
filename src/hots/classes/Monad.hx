package hots.classes;

import hots.classes.Applicative;
import hots.Of;


import scuts.Scuts;


interface Monad<M> implements Applicative<M>
{
  public function flatMap<A,B>(val:Of<M,A>, f: A->Of<M,B>):Of<M,B>;
  
  public function flatten <A> (val: Of<M, Of<M,A>>):Of<M,A>;
}

















