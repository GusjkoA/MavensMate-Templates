/**
 * SOAP web service types/methods.
 *
 * {{ class_description }}
 *
 * @author		Arturs Gusjko
 */
global class {{ api_name }}
{

	webservice String parameter { get; set; }

	public {{ api_name }}()
	{
		this.parameter = 'value';
	}

	webservice static String serviceName()
	{
		return '';
	}
}