package vos
{
    
[RemoteClass(alias="vos.Action")]
/**
 * The Range class is a value object for stock data ranges.
 */
public class Action
{
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------

    /**
     * Constructor
     */
    public function Action(code:String = null, label:String = null, 
                           position:int = 0)
    {
        this.code = code;
        this.label = label;
        this.position = position;
    }
    
    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------
    
    public var code:String;
    public var label:String;
    public var position:int;
}

}