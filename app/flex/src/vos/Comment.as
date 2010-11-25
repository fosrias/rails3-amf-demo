package vos
{

[RemoteClass(alias="vos.Comment")] 
/**
 * 
 */
public class Comment
{
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------
    
    /**
     * Constructor
     */
    public function Comment(description:String = null, action:Action = null)
    {
        this.description = description;
        this.action = action;
    }
    
    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------
    
    public var id:int;
    public var postId:int;
    public var description:String;
    public var action:Action;
}

}