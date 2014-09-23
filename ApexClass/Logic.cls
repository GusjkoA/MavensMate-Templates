/**
 *
 * 
 * @author		Arturs Gusjko
 */
public with sharing class {{ api_name }}
{
	/************* PUBLIC METHODS ***************/



	// without sharing logic goes inside this class and is exposed via wrapping methods.
	private without sharing class {{ api_name }}WithoutSharing
	{
		/******************* PUBLIC METHODS ****************/




		/***************** SINGLETON CONSTRUCTOR ****************/
		private final {{ api_name }} withSharing; // backward reference
		public {{ api_name }}WithoutSharing({{ api_name }} withSharing)
		{
			this.withSharing = withSharing;
		}
	}

	/************* GENERIC METHODS **************/

	static private final {{ api_name }} instance = new {{ api_name }}();
	static private final {{ api_name }}WithoutSharing withoutSharing = new {{ api_name }}WithoutSharing();
	static public {{ api_name }} getInstance()
	{
		return instance;
	}

	private {{ api_name }}(){}
	
}