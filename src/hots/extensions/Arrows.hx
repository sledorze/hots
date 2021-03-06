package hots.extensions;

import hots.classes.Arrow;
import hots.classes.Category;
import hots.OfOf;
import scuts.core.types.Tup2;

class Arrows 
{
  
  
  public static inline function arr<A,B, AR>(f:A->B, arr:Arrow<AR>):OfOf<AR, A, B> return arr.arr(f)
  
  public static function id <A, Cat>(a:A, cat:Category<Cat>):OfOf<Cat, A, A> return cat.id(a)
  
  public static function next <A,B,C, Cat>(f:OfOf<Cat, A, B>, g:OfOf<Cat, B, C>, cat:Category<Cat>):OfOf<Cat,A, C> return cat.next(f,g)
  
  public static function dot <A,B,C, Cat>(g:OfOf<Cat, B, C>, f:OfOf<Cat, A, B>, cat:Category<Cat>):OfOf<Cat, A, C> return cat.dot(g,f)
  
  public static function back <A,B,C, Cat>(g:OfOf<Cat, B, C>, f:OfOf<Cat, A, B>, cat:Category<Cat>):OfOf<Cat,A, C> return cat.back(g,f)

  public static function split <B,B1, C,C1,D, AR>(f:OfOf<AR,B, C>, g:OfOf<AR, B1, C1>, arr:Arrow<AR>):OfOf<AR, Tup2<B,B1>, Tup2<C,C1>> return arr.split(f,g)
  
  public static function first <B,C,D, AR>(f:OfOf<AR,B,C>, arr:Arrow<AR>):OfOf<AR, Tup2<B,D>, Tup2<C,D>> return arr.first(f)
  
  public static function second <B,C,D, AR>(f:OfOf<AR,B, C>, arr:Arrow<AR>):OfOf<AR, Tup2<D,B>, Tup2<D,C>> return arr.second(f)
    
  public static function fanout <B,C, C1, AR>(f:OfOf<AR,B, C>, g:OfOf<AR, B, C1>, arr:Arrow<AR>):OfOf<AR, B, Tup2<C,C1>> return arr.fanout(f,g)
  
  
  
}