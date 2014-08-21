/**
 * Handler class for the associated object.
 * The object is taken as an input parameter in all methods of this class.
 *
 * IMPORTANT: Logic class should always be transient.
 *
 * @author		Arturs Gusjko
 */
public with sharing class {{ api_name }}
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
	// without sharing logic goes inside this class and is exposed via wrapping methods.
	private without sharing class {{ api_name }}WithoutSharing
	{
		
	}

	static private final {{ api_name }}WithoutSharing withoutSharing = new {{ api_name }}WithoutSharing();
	*/
}