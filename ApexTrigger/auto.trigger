/**
 * Event entry point for {{ object_name }} object.
 *
 * @author		Arturs Gusjko
 */
trigger {{ api_name }} on {{ object_name }} ( before insert, after insert ,before update, after update ,before delete, after delete ,after undelete)
{
	AbstractTrigger.execute();
}