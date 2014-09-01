/**
 *  
 *
 * @author		Arturs Gusjko
 */
public with sharing class {{ api_name }}
								implements 	SchedulerBackgroundJob.IBackgroundJob
								, SchedulerBackgroundJob.IBatchable
								//, SchedulerBackgroundJob.ISelfReschedulable
{
	public {{ api_name }}()
	{

	}

	public Database.QueryLocator start(Database.BatchableContext bc, String originalJobName, String params)
	{
		return Database.getQueryLocator([SELECT Id FROM Account]);
	}

	public void execute(Database.BatchableContext bc, List<SObject> scope)
	{
		System.debug(scope);
	}

	public Boolean finish(Database.BatchableContext bc, Boolean isStartError)
	{
		Log.d('finish!');
		return true;
	}
}