/**
 * 
 *
 * @author		Arturs Gusjko
 */
public class {{ api_name }}
					implements SchedulerBackgroundJob.ISchedulable 
								, SchedulerBackgroundJob.ISelfReschedulable
								, SchedulerBackgroundJob.IBackgroundJob
{
	public {{ api_name }}()
	{

	}

	public Boolean execute(SchedulableContext sc, String originalJobName, String params)
	{
		System.debug('hello world');
		return true;
	}
}