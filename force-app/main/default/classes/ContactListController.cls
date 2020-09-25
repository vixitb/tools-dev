/**
 * @description       : 
 * @author            : VIXIT BHARDWAJ
 * @group             : 
 * @last modified on  : 09-24-2020
 * @last modified by  : VIXIT BHARDWAJ
 * Modifications Log 
 * Ver   Date         Author           Modification
 * 1.0   09-24-2020   VIXIT BHARDWAJ   Initial Version
**/
public with sharing class ContactListController {
    public ContactListController() {

    }

    @AuraEnabled (cacheable=true)
    public static List<Contact> getContacts(){
        return [SELECT ID, FirstName, LastName FROM Contact];
    }
}
