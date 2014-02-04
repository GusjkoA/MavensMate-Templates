/**
 * Handler class for the associated object.
 * The object is taken as an input parameter in all methods of this class.
 *
 * IMPORTANT: Logic class should always be transient.
 *
 * @author		Arturs Gusjko
 */
public without sharing class {{ api_name }} extends AbstractLogic
{
	/************* PUBLIC METHODS ***************/



	/************* GENERIC METHODS **************/

	static private final {{ api_name }} instance = new {{ api_name }}();
	static public {{ api_name }} getInstance()
	{
		return instance;
	}

	private {{ api_name }}(){}

	/*
	// with sharing logic goes inside this class and is exposed via wrapping methods.
	private with sharing class {{ api_name }}WithSharing extends AnyClass
	{
		
	}

	static private final {{ api_name }}WithSharing logicWithSharing = new {{ api_name }}WithSharing();
	*/
}