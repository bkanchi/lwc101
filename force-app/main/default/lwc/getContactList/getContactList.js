/*eslint no-console: ["error", { allow: ["warn", "error"] }] */
import { LightningElement, track, wire, api } from 'lwc';
import findContacts from '@salesforce/apex/ContactController.getContacts';

/** The delay used when debouncing event handlers before invoking Apex. */
const DELAY = 300;

export default class ApexWireMethodWithParams extends LightningElement {
    @track searchKey = '';
    @api recordId;
    
    @wire(findContacts, { searchKey: '$searchKey' })
    contacts;

//connectedCallback function is similar to init method in Lightning Components.
    connectedCallback(){
        this.searchKey = this.recordId;
    }

}