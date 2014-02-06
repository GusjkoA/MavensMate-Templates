/**
 * 
 *
 * @author		Arturs Gusjko
 */
global class {{ api_name }} extends AbstractSchedulable
{
	global {{ api_name }}()
	{
		super();

		// IsSelfReschedulable = true;
		// RescheduleTimeInMins = 60;
	}

	global override void schExecute(SchedulableContext sc)
	{
		// logic here
	}
}