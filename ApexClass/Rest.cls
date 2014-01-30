/**
 * RESTful resource for
 *
 * Access @ https://my_instance.salesforce.com/services/apexrest/my_url/
 *
 * @author Arturs Gusjko
 */
@RestResource(urlMapping='/my_url/*')
global WITH sharing class MyRestResource
{

    static private RestRequest req = RestContext.request; // properties: params, requestURI, requestPath, remoteAddr, httpMethod, headers, requestBody
    static private RestResponse res = RestContext.response;

    /**
     *
     */
    @HttpGet
    global static String doGet()
    {
        String accountId = req.requestURI.substringAfter('/');
        Account result = [SELECT Id, Name, Phone, Website FROM Account WHERE Id = :accountId];
        return result;
    }

    /**
     * 
     *
     * Input example:
     * {
     *  "name" : "my name",
     *  "phone" : 1234
     * }
     */
    @HttpPost
    global static String doPost(String name, Integer phone)
    {
        Account account = new Account();
        account.Name = name;
        account.phone = phone;
        insert account;
        return account.Id;
    }

    /**
     * 
     */
    @HttpPut
    global static String doPut(String name, String phone, String website)
    {
        Account account = new Account();
        account.Name = name;
        account.phone = phone;
        account.website = website;
        insert account;
        return account.Id;
    }

    /**
     *
     */
    @HttpDelete
    global static void doDelete()
    {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String accountId = req.requestURI.substringAfter('/');
        Account account = [SELECT Id FROM Account WHERE Id = :accountId];
        delete account;
    }

    /**
     *
     */
    @HttpPatch
    global static String doPatch(String name, String phone, String website)
    {
        Account account = new Account();
        account.Name = name;
        account.phone = phone;
        account.website = website;
        insert account;
        return account.Id;
    }
}