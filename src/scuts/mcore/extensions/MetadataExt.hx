package scuts.mcore.extensions;
import scuts.core.extensions.Arrays;
import scuts.core.extensions.Strings;
import haxe.macro.Expr;

private typedef MetadataEntry = { name : String, params : Array<Expr>, pos : Position };

class MetadataEntryExt 
{
  public static function eq (a:MetadataEntry, b:MetadataEntry):Bool 
  {
    return Strings.eq(a.name, b.name)
      && PositionExt.eq(a.pos, b.pos)
      && Arrays.eq(a.params, b.params, ExprExt.eq);
  }
  
}

class MetadataExt 
{

  public static function eq (a:Metadata, b:Metadata):Bool 
  {
    return Arrays.eq(a,b, MetadataEntryExt.eq);
  }
  
}