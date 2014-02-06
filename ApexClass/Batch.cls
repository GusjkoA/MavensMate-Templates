/**
 *  
 *
 * @author		Arturs Gusjko
 */
global withOUT sharing class {{ api_name }} extends AbstractBatchable
{
	global {{ api_name }}()
	{
		super();
		// IsSelfReschedulable = true;
		// PostponeTimeInMins = ;
		// RescheduleTimeInMins = ;
		query = 'Select Id from Account';
	}

	global override Database.QueryLocator batchStart(Database.BatchableContext bc)
	{
		return Database.getQueryLocator(query);
	}

	global override void batchExecute(Database.BatchableContext bc, List<SObject> scope)
	{
		for(SObject o : scope)
		{
			System.debug(o);
		}
	}

	global override void batchFinish(Database.BatchableContext bc)
	{
		// USE IsSelfReschedulable = false; to terminate continuous execution on certain condition if is set to true before
	}
}