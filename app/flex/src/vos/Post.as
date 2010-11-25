package vos
{

[RemoteClass(alias="vos.Post")] 
/**
 * 
 */
public class Post
{
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------
    
    /**
     * Constructor
     */
    public function Post(name:String = null)
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
    public var author:PostAuthor;
    public var testAttribute:String = 'tested';
    
    private var _comments:Array = [];

    public function get comments():Array
    {
        return _comments;
    }

    public function set comments(value:Array):void
    {
        _comments = value;
    }
    
    public var categories:Array = [];
    
    [Transient]
    public function set parent_categories(value:Array):void
    {
        categories = value;
    }
}

}