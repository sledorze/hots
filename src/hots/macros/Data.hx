package hots.macros;

import haxe.macro.Type;
import scuts.core.types.Tup2;



enum ResolveError 
{
  InvalidTypeClass(t:Type);
  NoInstanceFound(tcId:String, exprType:Type);
  MultipleInstancesNoneInScope(tcId:String, exprType:Type);
  MultipleInstancesWithScope(tcId:String, exprType:Type);
  DependencyErrors(arr:Array<ResolveError>);
}

enum TypeConstructorInfo 
{
  IsTypeConstructor(innerType:Type);
  NoTypeConstructor;
}


typedef TypeClassInstanceInfo = 
{
  instance:ClassType,
  tc : ClassType,
  tcParamMappings : Array<Tup2<Type, Type>>,
  dependencies : Array<Tup2<Type, Array<Type>>>,
  freeParameters: Array<Type>,
  allParameters:Array<Type>,
  tcParamTypes:Array<Type>,
  usingCall:String
}
