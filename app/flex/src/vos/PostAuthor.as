package vos
{
[RemoteClass(alias="vos.PostAuthor")] 
/**
 * 
 */
public class PostAuthor
{
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------
    
    /**
     * Constructor
     */
    public function PostAuthor(name:String = null, description:String = null)
    {
        this.name = name;
        this.description = description;
    }
    
    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------
    
	public var postId:int;
	public var name:String;
	public var description:String;
}

}