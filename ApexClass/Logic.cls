/**
 *
 * 
 * @author		Arturs Gusjko
 */
public without sharing class {{ api_name }}
{
	/************* PUBLIC METHODS ***************/



	// without sharing logic goes inside this class and is exposed via wrapping methods.
	private with sharing class {{ api_name }}WithSharing
	{
		/******************* PUBLIC METHODS ****************/




		/***************** SINGLETON CONSTRUCTOR ****************/
		private final {{ api_name }} withoutSharing; // backward reference
		public {{ api_name }}WithSharing({{ api_name }} withoutSharing)
		{
			this.withoutSharing = withoutSharing;
		}
	}

	/************* GENERIC METHODS **************/

	static private final {{ api_name }} instance = new {{ api_name }}();
	//static private final {{ api_name }}WithSharing withSharing = new {{ api_name }}WithSharing(instance);
	static public {{ api_name }} getInstance()
	{
		return instance;
	}

	private {{ api_name }}(){}
	
}