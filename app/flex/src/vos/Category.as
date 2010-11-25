package vos
{


[RemoteClass(alias="vos.Category")] 
/**
 * 
 */
public class Category
{
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------
    
    /**
     * Constructor
     */
    public function Category(name:String = null)
    {
        this.name = name;
    }
    
    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------
    
    public var id:int;
    public var name:String;
    public var postId:int;    
    
    private var _children:Array = [];

    public function get children():Array
    {
        return _children;
    }

    public function set children(value:Array):void
    {
        _children = value;
        for each (var child:Category in _children)
        {
            child.parent = this;
        }
    }
    
    [Transient]
    public var parent:Category;
    
    //--------------------------------------------------------------------------
    //
    //  Methods
    //
    //--------------------------------------------------------------------------
    
    public function addChild(value:Category):Category
    {
        children.push(value);
        return value;
    }
}

}