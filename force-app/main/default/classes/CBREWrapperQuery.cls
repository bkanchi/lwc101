public class CBREWrapperQuery {
    public string jsonData;
    
    public CBREWrapperQuery(){
        jsonData = '[{"columnsize":"4","fields":[{"decimalPlace":0,"fieldAPI":"APAC_Minimum_Price__c","isDependent":false,"label":"APAC Minimum Price","operator":"<=","selectedvalue":"23","selectedvaluelist":[],"sortOrder":1,"type":"Number"},{"decimalPlace":0,"fieldAPI":"APAC_Minimum_Total_Area__c","isDependent":false,"label":"Minimum_Total_Area","operator":"<=","selectedvalue":"231","selectedvaluelist":[],"sortOrder":2,"type":"Number"},{"decimalPlace":0,"fieldAPI":"APAC_Maximum_Price__c","isDependent":false,"label":"APAC Maximum Price","operator":"<=","selectedvalue":"2","selectedvaluelist":[],"sortOrder":3,"type":"Number"},{"decimalPlace":0,"fieldAPI":"APAC_Maximum_Total_Area__c","isDependent":false,"label":"APAC Maximum Total Area","operator":"<=","selectedvalue":"65","selectedvaluelist":[],"sortOrder":4,"type":"Number"},{"decimalPlace":0,"fieldAPI":"CurrencyIsoCode","isDependent":false,"label":"Currency","operator":"<=","options":[{"label":"--None--","value":"None"},{"label":"AED - UAE Dirham","value":"AED"},{"label":"ARS - Argentine Peso","value":"ARS"},{"label":"AUD - Australian Dollar","value":"AUD"},{"label":"BGN - Bulgarian Lev","value":"BGN"},{"label":"BHD - Bahraini Dinar","value":"BHD"},{"label":"BRL - Brazilian Real","value":"BRL"},{"label":"BWP - Botswana Pula","value":"BWP"},{"label":"CAD - Canadian Dollar","value":"CAD"},{"label":"CHF - Swiss Franc","value":"CHF"},{"label":"CLP - Chilean Peso","value":"CLP"},{"label":"CNY - Chinese Yuan","value":"CNY"},{"label":"COP - Colombian Peso","value":"COP"},{"label":"CRC - Costa Rica Colon","value":"CRC"},{"label":"CZK - Czech Koruna","value":"CZK"},{"label":"DKK - Danish Krone","value":"DKK"},{"label":"DOP - Dominican Peso","value":"DOP"},{"label":"EGP - Egyptian Pound","value":"EGP"},{"label":"EUR - Euro","value":"EUR"},{"label":"GBP - British Pound","value":"GBP"},{"label":"HKD - Hong Kong Dollar","value":"HKD"},{"label":"HNL - Honduras Lempira","value":"HNL"},{"label":"HRK - Kuna","value":"HRK"},{"label":"HUF - Hungarian Forint","value":"HUF"},{"label":"IDR - Indonesian Rupiah","value":"IDR"},{"label":"ILS - Israeli Shekel","value":"ILS"},{"label":"INR - Indian Rupee","value":"INR"},{"label":"ISK - Iceland Krona","value":"ISK"},{"label":"JPY - Japanese Yen","value":"JPY"},{"label":"KES - Kenyan Shilling","value":"KES"},{"label":"KHR - Cambodia Riel","value":"KHR"},{"label":"KRW - Korean Won","value":"KRW"},{"label":"KWD - Kuwaiti Dinar","value":"KWD"},{"label":"KZT - Kazakhstan Tenge","value":"KZT"},{"label":"MAD - Moroccan Dirham","value":"MAD"},{"label":"MOP - Macau Pataca","value":"MOP"},{"label":"MUR - Mauritius Rupee","value":"MUR"},{"label":"MXN - Mexican Peso","value":"MXN"},{"label":"MYR - Malaysian Ringgit","value":"MYR"},{"label":"NOK - Norwegian Krone","value":"NOK"},{"label":"NZD - New Zealand Dollar","value":"NZD"},{"label":"OMR - Omani Rial","value":"OMR"},{"label":"PAB - Panama Balboa","value":"PAB"},{"label":"PEN - Peruvian Sol","value":"PEN"},{"label":"PHP - Philippine Peso","value":"PHP"},{"label":"PKR - Pakistani Rupee","value":"PKR"},{"label":"PLN - Polish Zloty","value":"PLN"},{"label":"QAR - Qatar Rial","value":"QAR"},{"label":"RON - Romanian Leu","value":"RON"},{"label":"RSD - Serbian Dinar","value":"RSD"},{"label":"RUB - Russian Rouble","value":"RUB"},{"label":"SAR - Saudi Arabian Riyal","value":"SAR"},{"label":"SEK - Swedish Krona","value":"SEK"},{"label":"SGD - Singapore Dollar","value":"SGD"},{"label":"THB - Thai Baht","value":"THB"},{"label":"TRY - Turkish Lira (New)","value":"TRY"},{"label":"TWD - Taiwan Dollar","value":"TWD"},{"label":"UAH - Ukraine Hryvnia","value":"UAH"},{"label":"UGX - Ugandan Shilling","value":"UGX"},{"label":"USD - U.S. Dollar","value":"USD"},{"label":"VEF - Venezuelan Bolivar Fuerte","value":"VEF"},{"label":"VND - Vietnam Dong","value":"VND"},{"label":"ZAR - South African Rand","value":"ZAR"},{"label":"ZWL - Zimbabwe Dollar","value":"ZWL"}],"selectedvalue":"AED","selectedvaluelist":[],"sortOrder":5,"type":"Picklist"},{"decimalPlace":0,"fieldAPI":"APAC_Area_UOM__c","isDependent":false,"label":"Area Unit Of Measure","operator":"<=","options":[{"label":"--None--","value":"None"},{"label":"Acres","value":"Acres"},{"label":"Hectares","value":"Hectares"},{"label":"Kilowatts","value":"Kilowatts"},{"label":"Ping","value":"Ping"},{"label":"Pyeong","value":"Pyeong"},{"label":"Rai","value":"Rai"},{"label":"Square Feet","value":"Square Feet"},{"label":"Square Meters","value":"Square Meters"},{"label":"Square Wah","value":"Square Wah"},{"label":"Square Yards","value":"Square Yards"},{"label":"Tsubo","value":"Tsubo"}],"selectedvalue":"Acres","selectedvaluelist":[],"sortOrder":7,"type":"Picklist"},{"decimalPlace":0,"fieldAPI":"Minimum_WAULT__c","isDependent":false,"label":"Minimum WAULT","operator":"<=","selectedvalue":"8798","selectedvaluelist":[],"sortOrder":8,"type":"Number"},{"decimalPlace":0,"fieldAPI":"Min_Occupancy__c","isDependent":false,"label":"Min Occupancy","operator":"<=","selectedvalue":"89","selectedvaluelist":[],"sortOrder":9,"type":"Number"},{"decimalPlace":0,"fieldAPI":"Share_deal__c","isDependent":false,"label":"Share deal","operator":"<=","selectedvaluelist":[],"sortOrder":10,"type":"Toggle","selectedvalue":true},{"decimalPlace":0,"fieldAPI":"Single_Asset_or_Portfolio__c","isDependent":false,"label":"Single Asset","operator":"=","options":[{"label":"--None--","value":"None"},{"label":"Single Asset","value":"Single Asset"},{"label":"Portfolio","value":"Portfolio"}],"selectedvalue":"Single Asset","selectedvaluelist":[],"sortOrder":11,"type":"Picklist"},{"decimalPlace":0,"fieldAPI":"Preferred_Country__c","isDependent":false,"label":"Preferred Country","operator":"=","options":[{"label":"--None--","value":"None"},{"label":"Afghanistan","value":"Afghanistan"},{"label":"Albania","value":"Albania"},{"label":"Algeria","value":"Algeria"},{"label":"Andorra","value":"Andorra"},{"label":"Angola","value":"Angola"},{"label":"Antigua and Barbuda","value":"Antigua and Barbuda"},{"label":"Argentina","value":"Argentina"},{"label":"Armenia","value":"Armenia"},{"label":"Australia","value":"Australia"},{"label":"Austria","value":"Austria"},{"label":"Azerbaijan","value":"Azerbaijan"},{"label":"Bahamas","value":"Bahamas"},{"label":"Bahrain","value":"Bahrain"},{"label":"Bangladesh","value":"Bangladesh"},{"label":"Barbados","value":"Barbados"},{"label":"Belarus","value":"Belarus"},{"label":"Belgium","value":"Belgium"},{"label":"Belize","value":"Belize"},{"label":"Benin","value":"Benin"},{"label":"Bhutan","value":"Bhutan"},{"label":"Bolivia","value":"Bolivia"},{"label":"Bosnia and Herzegovina","value":"Bosnia and Herzegovina"},{"label":"Botswana","value":"Botswana"},{"label":"Brazil","value":"Brazil"},{"label":"Brunei Darussalam","value":"Brunei Darussalam"},{"label":"Bulgaria","value":"Bulgaria"},{"label":"Burkina Faso","value":"Burkina Faso"},{"label":"Burundi","value":"Burundi"},{"label":"Cabo Verde","value":"Cabo Verde"},{"label":"Cambodia","value":"Cambodia"},{"label":"Cameroon","value":"Cameroon"},{"label":"Canada","value":"Canada"},{"label":"Central African Republic","value":"Central African Republic"},{"label":"Chad","value":"Chad"},{"label":"Chile","value":"Chile"},{"label":"China","value":"China"},{"label":"Colombia","value":"Colombia"},{"label":"Comoros","value":"Comoros"},{"label":"Congo","value":"Congo"},{"label":"Costa Rica","value":"Costa Rica"},{"label":"Croatia","value":"Croatia"},{"label":"Cuba","value":"Cuba"},{"label":"Cyprus","value":"Cyprus"},{"label":"Czech Republic","value":"Czech Republic"},{"label":"Democratic People&#39;s Republic of Korea (North Korea)","value":"Democratic People&#39;s Republic of Korea (North Korea)"},{"label":"Democratic Republic of the Cong","value":"Democratic Republic of the Cong"},{"label":"Denmark","value":"Denmark"},{"label":"Djibouti","value":"Djibouti"},{"label":"Dominica","value":"Dominica"},{"label":"Dominican Republic","value":"Dominican Republic"},{"label":"Ecuador","value":"Ecuador"},{"label":"Egypt","value":"Egypt"},{"label":"El Salvador","value":"El Salvador"},{"label":"Equatorial Guinea","value":"Equatorial Guinea"},{"label":"Eritrea","value":"Eritrea"},{"label":"Estonia","value":"Estonia"},{"label":"Ethiopia","value":"Ethiopia"},{"label":"Fiji","value":"Fiji"},{"label":"Finland","value":"Finland"},{"label":"France","value":"France"},{"label":"Gabon","value":"Gabon"},{"label":"Gambia","value":"Gambia"},{"label":"Georgia","value":"Georgia"},{"label":"Germany","value":"Germany"},{"label":"Ghana","value":"Ghana"},{"label":"Greece","value":"Greece"},{"label":"Grenada","value":"Grenada"},{"label":"Guatemala","value":"Guatemala"},{"label":"Guinea","value":"Guinea"},{"label":"Guinea-Bissau","value":"Guinea-Bissau"},{"label":"Guyana","value":"Guyana"},{"label":"Haiti","value":"Haiti"},{"label":"Honduras","value":"Honduras"},{"label":"Hong Kong","value":"Hong Kong"},{"label":"Hungary","value":"Hungary"},{"label":"Iceland","value":"Iceland"},{"label":"India","value":"India"},{"label":"Indonesia","value":"Indonesia"},{"label":"Iran","value":"Iran"},{"label":"Iraq","value":"Iraq"},{"label":"Ireland","value":"Ireland"},{"label":"Israel","value":"Israel"},{"label":"Italy","value":"Italy"},{"label":"Jamaica","value":"Jamaica"},{"label":"Japan","value":"Japan"},{"label":"Jordan","value":"Jordan"},{"label":"Kazakhstan","value":"Kazakhstan"},{"label":"Kenya","value":"Kenya"},{"label":"Kiribati","value":"Kiribati"},{"label":"Kuwait","value":"Kuwait"},{"label":"Kyrgyzstan","value":"Kyrgyzstan"},{"label":"Lao People&#39;s Democratic Republic (Laos)","value":"Lao People&#39;s Democratic Republic (Laos)"},{"label":"Latvia","value":"Latvia"},{"label":"Lebanon","value":"Lebanon"},{"label":"Lesotho","value":"Lesotho"},{"label":"Liberia","value":"Liberia"},{"label":"Libya","value":"Libya"},{"label":"Liechtenstein","value":"Liechtenstein"},{"label":"Lithuania","value":"Lithuania"},{"label":"Luxembourg","value":"Luxembourg"},{"label":"Macedonia","value":"Macedonia"},{"label":"Madagascar","value":"Madagascar"},{"label":"Malawi","value":"Malawi"},{"label":"Malaysia","value":"Malaysia"},{"label":"Maldives","value":"Maldives"},{"label":"Mali","value":"Mali"},{"label":"Malta","value":"Malta"},{"label":"Marshall Islands","value":"Marshall Islands"},{"label":"Mauritania","value":"Mauritania"},{"label":"Mauritius","value":"Mauritius"},{"label":"Mexico","value":"Mexico"},{"label":"Micronesia (Federated States of)","value":"Micronesia (Federated States of)"},{"label":"Monaco","value":"Monaco"},{"label":"Mongolia","value":"Mongolia"},{"label":"Montenegro","value":"Montenegro"},{"label":"Morocco","value":"Morocco"},{"label":"Mozambique","value":"Mozambique"},{"label":"Myanmar","value":"Myanmar"},{"label":"Namibia","value":"Namibia"},{"label":"Nauru","value":"Nauru"},{"label":"Nepal","value":"Nepal"},{"label":"Netherlands","value":"Netherlands"},{"label":"New Zealand","value":"New Zealand"},{"label":"Nicaragua","value":"Nicaragua"},{"label":"Niger","value":"Niger"},{"label":"Nigeria","value":"Nigeria"},{"label":"Norway","value":"Norway"},{"label":"Oman","value":"Oman"},{"label":"Pakistan","value":"Pakistan"},{"label":"Palau","value":"Palau"},{"label":"Panama","value":"Panama"},{"label":"Papua New Guinea","value":"Papua New Guinea"},{"label":"Paraguay","value":"Paraguay"},{"label":"Peru","value":"Peru"},{"label":"Philippines","value":"Philippines"},{"label":"Poland","value":"Poland"},{"label":"Portugal","value":"Portugal"},{"label":"Qatar","value":"Qatar"},{"label":"Republic of Korea (South Korea)","value":"Republic of Korea (South Korea)"},{"label":"Republic of Moldova","value":"Republic of Moldova"},{"label":"Romania","value":"Romania"},{"label":"Russian Federation","value":"Russian Federation"},{"label":"Rwanda","value":"Rwanda"},{"label":"Saint Kitts and Nevis","value":"Saint Kitts and Nevis"},{"label":"Saint Lucia","value":"Saint Lucia"},{"label":"Saint Vincent and the Grenadines","value":"Saint Vincent and the Grenadines"},{"label":"Samoa","value":"Samoa"},{"label":"San Marino","value":"San Marino"},{"label":"Sao Tome and Principe","value":"Sao Tome and Principe"},{"label":"Saudi Arabia","value":"Saudi Arabia"},{"label":"Senegal","value":"Senegal"},{"label":"Serbia","value":"Serbia"},{"label":"Seychelles","value":"Seychelles"},{"label":"Sierra Leone","value":"Sierra Leone"},{"label":"Singapore","value":"Singapore"},{"label":"Slovakia","value":"Slovakia"},{"label":"Slovenia","value":"Slovenia"},{"label":"Solomon Islands","value":"Solomon Islands"},{"label":"Somalia","value":"Somalia"},{"label":"South Africa","value":"South Africa"},{"label":"South Sudan","value":"South Sudan"},{"label":"Spain","value":"Spain"},{"label":"Sri Lanka","value":"Sri Lanka"},{"label":"Sudan","value":"Sudan"},{"label":"Suriname","value":"Suriname"},{"label":"Swaziland","value":"Swaziland"},{"label":"Sweden","value":"Sweden"},{"label":"Switzerland","value":"Switzerland"},{"label":"Syrian Arab Republic","value":"Syrian Arab Republic"},{"label":"Taiwan","value":"Taiwan"},{"label":"Tajikistan","value":"Tajikistan"},{"label":"Thailand","value":"Thailand"},{"label":"Timor-Leste","value":"Timor-Leste"},{"label":"Togo","value":"Togo"},{"label":"Tonga","value":"Tonga"},{"label":"Trinidad and Tobago","value":"Trinidad and Tobago"},{"label":"Tunisia","value":"Tunisia"},{"label":"Turkey","value":"Turkey"},{"label":"Turkmenistan","value":"Turkmenistan"},{"label":"Tuvalu","value":"Tuvalu"},{"label":"Uganda","value":"Uganda"},{"label":"Ukraine","value":"Ukraine"},{"label":"United Arab Emirates","value":"United Arab Emirates"},{"label":"United Kingdom","value":"United Kingdom"},{"label":"United Republic of Tanzania","value":"United Republic of Tanzania"},{"label":"United States","value":"United States of America"},{"label":"Uruguay","value":"Uruguay"},{"label":"Uzbekistan","value":"Uzbekistan"},{"label":"Vanuatu","value":"Vanuatu"},{"label":"Venezuela","value":"Venezuela"},{"label":"Vietnam","value":"Vietnam"},{"label":"Yemen","value":"Yemen"},{"label":"Zambia","value":"Zambia"},{"label":"Zimbabwe","value":"Zimbabwe"}],"selectedvalue":"Angola","selectedvaluelist":[],"sortOrder":12,"type":"Picklist"},{"decimalPlace":0,"fieldAPI":"Market__c","isDependent":false,"label":"Market","operator":"=","options":[{"label":"Aachen","value":"Aachen"},{"label":"Augsburg","value":"Augsburg"},{"label":"Bergisch Gladbach","value":"Bergisch Gladbach"},{"label":"Berlin","value":"Berlin"},{"label":"Bielefeld","value":"Bielefeld"},{"label":"Bochum","value":"Bochum"},{"label":"Bonn","value":"Bonn"},{"label":"Bottrop","value":"Bottrop"},{"label":"Braunschweig","value":"Braunschweig"},{"label":"Bremen","value":"Bremen"},{"label":"Bremerhaven","value":"Bremerhaven"},{"label":"Chemnitz","value":"Chemnitz"},{"label":"Darmstadt","value":"Darmstadt"},{"label":"Dortmund","value":"Dortmund"},{"label":"Dresden","value":"Dresden"},{"label":"Duisburg","value":"Duisburg"},{"label":"Düsseldorf","value":"Düsseldorf"},{"label":"Erfurt","value":"Erfurt"},{"label":"Erlangen","value":"Erlangen"},{"label":"Essen","value":"Essen"},{"label":"Frankfurt/Main","value":"Frankfurt/Main"},{"label":"Freiburg (Breisgau) ","value":"Freiburg (Breisgau) "},{"label":"Fürth","value":"Fürth"},{"label":"Gelsenkirchen","value":"Gelsenkirchen"},{"label":"Göttingen","value":"Göttingen"},{"label":"Hagen","value":"Hagen"},{"label":"Halle (Saale)","value":"Halle (Saale)"},{"label":"Hamburg","value":"Hamburg"},{"label":"Hamm","value":"Hamm"},{"label":"Hannover","value":"Hannover"},{"label":"Heidelberg","value":"Heidelberg"},{"label":"Heilbronn","value":"Heilbronn"},{"label":"Herne","value":"Herne"},{"label":"Ingolstadt","value":"Ingolstadt"},{"label":"Italy Center","value":"Italy Center"},{"label":"Italy North","value":"Italy North"},{"label":"Italy South","value":"Italy South"},{"label":"Jena","value":"Jena"},{"label":"Karlsruhe","value":"Karlsruhe"},{"label":"Kassel","value":"Kassel"},{"label":"Kiel","value":"Kiel"},{"label":"Koblenz","value":"Koblenz"},{"label":"Köln","value":"Köln"},{"label":"Krefeld","value":"Krefeld"},{"label":"Leipzig","value":"Leipzig"},{"label":"Leverkusen","value":"Leverkusen"},{"label":"Lübeck","value":"Lübeck"},{"label":"Ludwigshafen","value":"Ludwigshafen"},{"label":"Magdeburg","value":"Magdeburg"},{"label":"Mainz","value":"Mainz"},{"label":"Mannheim","value":"Mannheim"},{"label":"Mid-Sized Cities","value":"Mid-Sized Cities"},{"label":"Moers","value":"Moers"},{"label":"Mönchengladbach ","value":"Mönchengladbach "},{"label":"Mülheim (Ruhr)","value":"Mülheim (Ruhr)"},{"label":"München","value":"München"},{"label":"Münster","value":"Münster"},{"label":"Neuss","value":"Neuss"},{"label":"Nürnberg","value":"Nürnberg"},{"label":"Oberhausen","value":"Oberhausen"},{"label":"Offenbach (Main) ","value":"Offenbach (Main) "},{"label":"Oldenburg","value":"Oldenburg"},{"label":"Osnabrück","value":"Osnabrück"},{"label":"Paderborn","value":"Paderborn"},{"label":"Pforzheim","value":"Pforzheim"},{"label":"Potsdam","value":"Potsdam"},{"label":"Recklinghausen ","value":"Recklinghausen "},{"label":"Regensburg","value":"Regensburg"},{"label":"Remscheid","value":"Remscheid"},{"label":"Reutlingen","value":"Reutlingen"},{"label":"Rostock","value":"Rostock"},{"label":"Saarbrücken","value":"Saarbrücken"},{"label":"Siegen","value":"Siegen"},{"label":"Small Cities","value":"Small Cities"},{"label":"Solingen","value":"Solingen"},{"label":"Stuttgart","value":"Stuttgart"},{"label":"Trier","value":"Trier"},{"label":"Ulm","value":"Ulm"},{"label":"Wiesbaden","value":"Wiesbaden"},{"label":"Wolfsburg","value":"Wolfsburg"},{"label":"Wuppertal","value":"Wuppertal"},{"label":"Würzburg","value":"Würzburg"}],"selectedvalue":"","selectedvaluelist":["Bergisch Gladbach","Augsburg"],"sortOrder":13,"type":"Multipicklist"},{"decimalPlace":0,"fieldAPI":"Asset_Type__c","isDependent":false,"label":"Property Asset Type","operator":"<=","options":[{"label":"Bank","value":"Bank"},{"label":"Healthcare institution","value":"Healthcare institution"},{"label":"Hotel","value":"Hotel"},{"label":"Industrial/Warehouse","value":"Industrial/Warehouse"},{"label":"Industrial infrastructures","value":"Industrial infrastructures"},{"label":"Land","value":"Land"},{"label":"Leisure","value":"Leisure"},{"label":"Logistics","value":"Logistics"},{"label":"Office","value":"Office"},{"label":"Pubs","value":"Pubs"},{"label":"Real Estate","value":"Real Estate"},{"label":"Residential","value":"Residential"},{"label":"Retail","value":"Retail"}],"selectedvalue":"","selectedvaluelist":["Healthcare institution"],"sortOrder":14,"type":"Multipicklist"},{"decimalPlace":0,"fieldAPI":"APAC_Investment_Strategy__c","isDependent":false,"label":"Investment Strategy","operator":"=","options":[{"label":"Core","value":"Core"},{"label":"Core-Plus","value":"Core-Plus"},{"label":"Value Add","value":"Value-Add"},{"label":"Opportunistic","value":"Opportunistic"},{"label":"Stabalized","value":"Stabalized"},{"label":"Vefa","value":"Vefa"}],"selectedvalue":"","selectedvaluelist":["Core-Plus"],"sortOrder":15,"type":"Multipicklist"},{"decimalPlace":0,"fieldAPI":"Asset_Sub_Type__c","isDependent":false,"label":"Investment Strategy","operator":"=","options":[{"label":"Above Retail","value":"Above Retail"},{"label":"Adult Learning","value":"Adult Learning"},{"label":"Affordable Housing","value":"Affordable Housing"},{"label":"Airports","value":"Airports"},{"label":"Banking Hall","value":"Banking Hall"},{"label":"Bar / Pub","value":"Bar / Pub"},{"label":"Bingo Halls","value":"Bingo Halls"},{"label":"Boutique/Country House","value":"Boutique/Country House"},{"label":"Branded Dealership","value":"Branded Dealership"},{"label":"Brewery","value":"Brewery"},{"label":"Brown Field Site","value":"Brown Field Site"},{"label":"Business Centre","value":"Business Centre"},{"label":"Business Park","value":"Business Park"},{"label":"Buy to Let","value":"Buy to Let"},{"label":"Car Supermarket","value":"Car Supermarket"},{"label":"Casinos","value":"Casinos"},{"label":"Change of Use","value":"Change of Use"},{"label":"Cinema","value":"Cinema"},{"label":"City Centre","value":"City Centre"},{"label":"Clinic","value":"Clinic"},{"label":"College","value":"College"},{"label":"Co-Location","value":"Co-Location"},{"label":"Cross-Dock","value":"Cross-Dock"},{"label":"Data Centres Majority","value":"Data Centres Majority"},{"label":"Department Store","value":"Department Store"},{"label":"Designer Outlets","value":"Designer Outlets"},{"label":"Development - Apartments, Low Rise","value":"Development - Apartments, Low Rise"},{"label":"Development - Apartments, Tower","value":"Development - Apartments, Tower"},{"label":"Development – Houses","value":"Development – Houses"},{"label":"Development - Master Plan","value":"Development - Master Plan"},{"label":"Development - Multi Family Housing","value":"Development - Multi Family Housing"},{"label":"Development Site - Data Centres","value":"Development Site - Data Centres"},{"label":"Development Site - Offices","value":"Development Site - Offices"},{"label":"Development - Strategic Land","value":"Development - Strategic Land"},{"label":"Distribution Centre","value":"Distribution Centre"},{"label":"Doctor&#39;s Surgery","value":"Doctor&#39;s Surgery"},{"label":"Economy (Budget)","value":"Economy (Budget)"},{"label":"Extramural - Nursing Home","value":"Extramural - Nursing Home"},{"label":"Extramural - Senior Living","value":"Extramural - Senior Living"},{"label":"Factory Outlet","value":"Factory Outlet"},{"label":"First Line Care (Medical Office)","value":"First Line Care (Medical Office)"},{"label":"Flexible Space","value":"Flexible Space"},{"label":"Food Outlet (Fast / Takeaway)","value":"Food Outlet (Fast / Takeaway)"},{"label":"Forecourt Retail","value":"Forecourt Retail"},{"label":"Fuel Logistics","value":"Fuel Logistics"},{"label":"Golf","value":"Golf"},{"label":"Green Field / Belt","value":"Green Field / Belt"},{"label":"Gym","value":"Gym"},{"label":"Heavy Industrial","value":"Heavy Industrial"},{"label":"High Street Retail","value":"High Street Retail"},{"label":"Hi-Tech Industry","value":"Hi-Tech Industry"},{"label":"Hospital","value":"Hospital"},{"label":"Hotel Majority","value":"Hotel Majority"},{"label":"Hyperscale","value":"Hyperscale"},{"label":"Independent Dealership","value":"Independent Dealership"},{"label":"Industrial Land","value":"Industrial Land"},{"label":"Industrial Majority","value":"Industrial Majority"},{"label":"Infrastructure","value":"Infrastructure"},{"label":"Intramural","value":"Intramural"},{"label":"Investment – Block","value":"Investment – Block"},{"label":"Investment - Ground Rents","value":"Investment - Ground Rents"},{"label":"Investment – Portfolio","value":"Investment – Portfolio"},{"label":"Laboratory Space","value":"Laboratory Space"},{"label":"Land Acquisiton","value":"Land Acquisiton"},{"label":"Leisure Park","value":"Leisure Park"},{"label":"Light Industrial","value":"Light Industrial"},{"label":"Lower","value":"Lower"},{"label":"Luxury","value":"Luxury"},{"label":"Manufacturing","value":"Manufacturing"},{"label":"Marinas","value":"Marinas"},{"label":"Master Plan","value":"Master Plan"},{"label":"Medical Office","value":"Medical Office"},{"label":"Midscale","value":"Midscale"},{"label":"Mining &amp; Extraction","value":"Mining &amp; Extraction"},{"label":"Multi-Family (Apartments / PRS)","value":"Multi-Family (Apartments / PRS)"},{"label":"Museums","value":"Museums"},{"label":"Nursery / Day Care","value":"Nursery / Day Care"},{"label":"Office Majority","value":"Office Majority"},{"label":"Other Healthcare","value":"Other Healthcare"},{"label":"Other Hotel","value":"Other Hotel"},{"label":"Other Industrial","value":"Other Industrial"},{"label":"Other Mixed Use","value":"Other Mixed Use"},{"label":"Other Office","value":"Other Office"},{"label":"Other Residential","value":"Other Residential"},{"label":"Other Retail","value":"Other Retail"},{"label":"Owner Occupied","value":"Owner Occupied"},{"label":"Parking","value":"Parking"},{"label":"Petrol Filling Station","value":"Petrol Filling Station"},{"label":"Petrol Station Supermarket","value":"Petrol Station Supermarket"},{"label":"Portfolio","value":"Portfolio"},{"label":"Ports","value":"Ports"},{"label":"Power Supply (Fuel Energy)","value":"Power Supply (Fuel Energy)"},{"label":"Power Supply (Green Energy)","value":"Power Supply (Green Energy)"},{"label":"Primary School","value":"Primary School"},{"label":"Private Nursing Homes","value":"Private Nursing Homes"},{"label":"Processing Plant","value":"Processing Plant"},{"label":"Production","value":"Production"},{"label":"Rail Stations","value":"Rail Stations"},{"label":"Redevelopment Site","value":"Redevelopment Site"},{"label":"Research &amp; Development","value":"Research &amp; Development"},{"label":"Residential Majority","value":"Residential Majority"},{"label":"Resort","value":"Resort"},{"label":"Restaurant","value":"Restaurant"},{"label":"Retail / Mixed Above","value":"Retail / Mixed Above"},{"label":"Retail / Office Above","value":"Retail / Office Above"},{"label":"Retail / Residential Above","value":"Retail / Residential Above"},{"label":"Retail Majority","value":"Retail Majority"},{"label":"Retail Park","value":"Retail Park"},{"label":"Retail Warehouse","value":"Retail Warehouse"},{"label":"Secondary School","value":"Secondary School"},{"label":"Second Line Care - Clinic","value":"Second Line Care - Clinic"},{"label":"Second Line Care - Hospital","value":"Second Line Care - Hospital"},{"label":"Self Store (City Box)","value":"Self Store (City Box)"},{"label":"Self Store (Complex)","value":"Self Store (Complex)"},{"label":"Senior Living","value":"Senior Living"},{"label":"Shopping Centre","value":"Shopping Centre"},{"label":"Showroom","value":"Showroom"},{"label":"Single Apartment","value":"Single Apartment"},{"label":"Single House","value":"Single House"},{"label":"Sports Complex","value":"Sports Complex"},{"label":"Stadia","value":"Stadia"},{"label":"Standing Investment","value":"Standing Investment"},{"label":"Strategic Land","value":"Strategic Land"},{"label":"Student Accommodation","value":"Student Accommodation"},{"label":"Supermarket","value":"Supermarket"},{"label":"Teaching Institute","value":"Teaching Institute"},{"label":"Theatre","value":"Theatre"},{"label":"Tower","value":"Tower"},{"label":"Training Workshops","value":"Training Workshops"},{"label":"Transport Infrastructure","value":"Transport Infrastructure"},{"label":"University","value":"University"},{"label":"Upper Midscale","value":"Upper Midscale"},{"label":"Upper Upscale","value":"Upper Upscale"},{"label":"Upscale","value":"Upscale"},{"label":"Vehicle Hire","value":"Vehicle Hire"},{"label":"Warehouse (Storage)","value":"Warehouse (Storage)"},{"label":"Wholesale","value":"Wholesale"}],"selectedvalue":"","selectedvaluelist":["Adult Learning"],"sortOrder":16,"type":"Multipicklist"}],"objName":"Property_Preferences__c","recordTypeId":"APAC_Property_Preferences","sectionName":"Property Preferences"}]';
            
            }
    public void searchData(String searchData, String campaignId) {
        
        Set<Id> existingMemberContactIds = new Set<Id>();
        
        for(CampaignMember cm : [SELECT Id, ContactId FROM CampaignMember WHERE CampaignId =:campaignId])
        {
            existingMemberContactIds.add(cm.ContactId);
        }
        
        searchData = this.jsonData;
        system.debug('searchData============='+searchData);
        system.debug('searchData============='+json.serialize(searchData));
        system.debug('searchData===campaignId=========='+campaignId);
        // List<Enquiry_Related_Contact__c> enqRelConList = new List<Enquiry_Related_Contact__c>();
        //ResultWrapper resWrap = new ResultWrapper();
        List<ObjectWrapper> objWraplist = (List<ObjectWrapper>)JSON.deserialize(searchData, List<ObjectWrapper>.Class);
        Map<String, FieldWrapper> fieldWrapper = new Map<String, FieldWrapper>();
        system.debug('#$ objWrapList=========='+objWraplist.size()+'========='+objWraplist);
        
        for(ObjectWrapper objWrap : objWraplist){
            for(FieldWrapper fWrap : objWrap.fields){                
                fieldWrapper.put(fWrap.fieldAPI, fWrap);
            }
        }
        system.debug('======'+fieldWrapper.size()+'========='+fieldWrapper);
        // return resWrap;
        
        
        string str = returnQuery(fieldWrapper,existingMemberContactIds);
        system.debug('=============='+str);
        
    }
    
    public string returnQuery(Map<String, FieldWrapper> fieldWrapper, Set<Id> existingMemberContactIds){
        
        Integer iAreaMin, iAreaMax, iPriceMin, iPriceMax;
        system.debug('=========APAC_Minimum_Total_Area__c====='+fieldWrapper.get('APAC_Minimum_Total_Area__c').selectedvalue);
        system.debug('=======APAC_Maximum_Total_Area__c======='+fieldWrapper.get('APAC_Maximum_Total_Area__c').selectedvalue);
        system.debug('=====APAC_Minimum_Price__c========='+fieldWrapper.get('APAC_Minimum_Price__c').selectedvalue);
        system.debug('=====APAC_Maximum_Price__c========='+fieldWrapper.get('APAC_Maximum_Price__c').selectedvalue);
        
        
        iAreaMin = !NullorEmpty(fieldWrapper.get('APAC_Minimum_Total_Area__c').selectedvalue)  ? Integer.valueOf(fieldWrapper.get('APAC_Minimum_Total_Area__c').selectedvalue) : 0;
        iAreaMax = !NullorEmpty(fieldWrapper.get('APAC_Maximum_Total_Area__c').selectedvalue) ? Integer.valueOf(fieldWrapper.get('APAC_Maximum_Total_Area__c').selectedvalue) : 0;
        iPriceMin = !NullorEmpty(fieldWrapper.get('APAC_Minimum_Price__c').selectedvalue)  ? Integer.valueOf(fieldWrapper.get('APAC_Minimum_Price__c').selectedvalue) : 0;
        iPriceMax = !NullorEmpty(fieldWrapper.get('APAC_Maximum_Price__c').selectedvalue)  ? Integer.valueOf(fieldWrapper.get('APAC_Maximum_Price__c').selectedvalue) : 0;
        String req = '';        
        try{
            req = 'SELECT Id, ' +
                'Contact__c, ' +
                'Contact__r.FirstName, ' +
                'Contact__r.LastName, ' +
                'Contact__r.Title, ' +
                'Contact__r.AccountId, ' +
                'Contact__r.Account.Name, ' +
                'Property_Preferences__r.Id, ' +
                'Property_Preferences__r.Name, ' + 
                'Property_Preferences__r.APAC_Account__c, '+
                'Property_Preferences__r.APAC_Account__r.Name, '+
                'Property_Preferences__r.Contact__r.Id, ' +
                'Property_Preferences__r.Contact__r.FirstName, ' +
                'Property_Preferences__r.Contact__r.LastName, ' +
                'Property_Preferences__r.Contact__r.Title, ' +
                'Property_Preferences__r.Contact__r.AccountId, ' +
                'Property_Preferences__r.CurrencyIsoCode, ' +
                'Property_Preferences__r.APAC_Country__c, ' +
                'Property_Preferences__r.Preferred_Country__c, '+
                'Property_Preferences__r.APAC_Region__c, '+
                'Property_Preferences__r.APAC_Area_UOM__c, '+
                'Property_Preferences__r.Asset_Type__c, '+
                'Property_Preferences__r.Asset_Sub_Type__c, '+
                'Property_Preferences__r.APAC_Maximum_Total_Area__c, ' +
                'Property_Preferences__r.APAC_Minimum_Total_Area__c, '+
                'Property_Preferences__r.APAC_Minimum_Price__c, '+
                'Property_Preferences__r.APAC_Maximum_Price__c, ' +
                'Property_Preferences__r.APAC_Investment_Strategy__c, '+
                'Property_Preferences__r.Single_Asset_or_Portfolio__c, '+
                'Property_Preferences__r.Investor_Type__c, ' +
                'Property_Preferences__r.Contact__r.Account.Name ' +
                'FROM Property_Preferences_Related_Contact__c ' +
                'WHERE Contact__c != null ' + 
                'AND Property_Preferences__r.Is_Active__c = true ' +
                'AND Contact__c NOT IN :existingMemberContactIds';
            
            system.debug('=============Asset_Type__c==========='+fieldWrapper.get('Asset_Type__c').selectedvaluelist);
            system.debug('=============Asset_Sub_Type__c==========='+fieldWrapper.get('Asset_Sub_Type__c').selectedvaluelist);
            system.debug('=============Single_Asset_or_Portfolio__c==========='+fieldWrapper.get('Single_Asset_or_Portfolio__c').selectedvaluelist);

            system.debug('=============APAC_Investment_Strategy__c==========='+fieldWrapper.get('APAC_Investment_Strategy__c').selectedvaluelist);
           
            
            
            if(fieldWrapper.get('Asset_Type__c').selectedvaluelist.size() > 0){
                req += ' AND Property_Preferences__r.Asset_Type__c INCLUDES (\'' + fieldWrapper.get('Asset_Type__c').selectedvaluelist + '\')';
            }
           /* if(!NullorEmpty(this.propertyPreference.Market_Preference__c )) {
                req += ' AND Property_Preferences__r.Market_Preference__c like \'%' + propertyPreference.Market_Preference__c + '%\''; 
            }*/
            
            if(fieldWrapper.get('Asset_Sub_Type__c').selectedvaluelist.size() > 0) {
                req += ' AND Property_Preferences__r.Asset_Sub_Type__c INCLUDES (\'' + fieldWrapper.get('Asset_Sub_Type__c').selectedvaluelist + '\')';
            }
            
            if(!NullorEmpty(fieldWrapper.get('Single_Asset_or_Portfolio__c').selectedvalue)){
                req += ' AND Property_Preferences__r.Single_Asset_or_Portfolio__c = \'' + fieldWrapper.get('Single_Asset_or_Portfolio__c').selectedvalue + '\'';
            }
            
            if(fieldWrapper.get('APAC_Investment_Strategy__c').selectedvaluelist.size() > 0){
                req += ' AND Property_Preferences__r.APAC_Investment_Strategy__c INCLUDES (\'' + fieldWrapper.get('APAC_Investment_Strategy__c').selectedvaluelist + '\')';
            } 
            
            if(iPriceMin > 0 && iPriceMax > 0) {
                req += ' AND (((Property_Preferences__r.APAC_Minimum_Price__c <= ' + iPriceMin;               
                req += ' AND Property_Preferences__r.APAC_Maximum_Price__c >= '  + iPriceMin + ')';
                req += ' OR (Property_Preferences__r.APAC_Minimum_Price__c <= ' + iPriceMax;
                req += ' AND Property_Preferences__r.APAC_Maximum_Price__c >= ' + iPriceMax + '))';
                req += ' OR ((Property_Preferences__r.APAC_Minimum_Price__c >= ' + iPriceMin;
                req += ' AND Property_Preferences__r.APAC_Minimum_Price__c <= ' + iPriceMax + ')';
                req += ' OR (Property_Preferences__r.APAC_Maximum_Price__c >= '  + iPriceMin;
                req += ' AND Property_Preferences__r.APAC_Maximum_Price__c <= ' + iPriceMax + ')))';
            }else {                                
                if(iPriceMin > 0) {                     
                    
                    req += ' AND ((Property_Preferences__r.APAC_Minimum_Price__c >= ' + iPriceMin;
                    req += ' OR Property_Preferences__r.APAC_Maximum_Price__c >= ' + iPriceMin + '))';
                }
                if(iPriceMax > 0) {
                    req += ' AND ((Property_Preferences__r.APAC_Minimum_Price__c <= ' + iPriceMax; 
                    req += ' AND Property_Preferences__r.APAC_Maximum_Price__c <= ' + iPriceMax + ')';
                    req += ' OR (Property_Preferences__r.APAC_Minimum_Price__c <= ' + iPriceMax;
                    req += ' AND Property_Preferences__r.APAC_Maximum_Price__c >= ' + iPriceMax + '))';
                }
            }
            
            if(iAreaMin > 0 && iAreaMax > 0) {
                req += ' AND (((Property_Preferences__r.APAC_Minimum_Total_Area__c <= ' + iAreaMin;               
                req += ' AND Property_Preferences__r.APAC_Maximum_Total_Area__c >= ' + iAreaMin  + ')';
                req += ' OR (Property_Preferences__r.APAC_Minimum_Total_Area__c <= ' + iAreaMax;
                req += ' AND Property_Preferences__r.APAC_Maximum_Total_Area__c  >= ' + iAreaMax + '))';
                req += ' OR ((Property_Preferences__r.APAC_Minimum_Total_Area__c >= ' + iAreaMin;
                req += ' AND Property_Preferences__r.APAC_Minimum_Total_Area__c <= ' + iAreaMax + ')';
                req += ' OR (Property_Preferences__r.APAC_Maximum_Total_Area__c >= ' + iAreaMin;
                req += ' AND Property_Preferences__r.APAC_Maximum_Total_Area__c <= ' + iAreaMax + ')))';
            }else {
                if(iAreaMin > 0) {
                    req += ' AND ((Property_Preferences__r.APAC_Minimum_Total_Area__c >= ' + iAreaMin; 
                    req += ' OR Property_Preferences__r.APAC_Maximum_Total_Area__c >= ' + iAreaMin +'))'; 
                }
                if(iAreaMax > 0) {                   
                    req += ' AND ((Property_Preferences__r.APAC_Minimum_Total_Area__c <= ' + iAreaMax; 
                    req += ' AND Property_Preferences__r.APAC_Maximum_Total_Area__c <= ' + iAreaMax + ')';
                    req += ' OR (Property_Preferences__r.APAC_Minimum_Total_Area__c <= ' + iAreaMax;
                    req += ' AND Property_Preferences__r.APAC_Maximum_Total_Area__c >= ' + iAreaMax + '))';
                }                                              
            }
            
             system.debug('=============Preferred_Country__c=====selectedvalue======'+fieldWrapper.get('Preferred_Country__c').selectedvaluelist);
            system.debug('=============Preferred_Country__c=====selectedvalue======'+fieldWrapper.get('Preferred_Country__c').selectedvaluelist);
            system.debug('=============Preferred_Country__c=====selectedvalue======'+fieldWrapper.get('CurrencyIsoCode').selectedvaluelist);
            
            //#296166
            if(!NullorEmpty(fieldWrapper.get('Preferred_Country__c').selectedvalue)){                
                req += ' AND Property_Preferences__r.Preferred_Country__c = \'' + fieldWrapper.get('Preferred_Country__c').selectedvalue + '\'';
                if(fieldWrapper.get('Market__c').selectedvaluelist.size() > 0){
                    req += ' AND Property_Preferences__r.Market__c INCLUDES (\'' + fieldWrapper.get('Market__c').selectedvaluelist + '\')';
                }
                req += ' AND Property_Preferences__r.APAC_Preference_Type__c IN(\'Investment\''+','+'\'Lease\')';
            }
            
            if(iPriceMin > 0 || iPriceMax > 0)
                req += ' AND Property_Preferences__r.CurrencyIsoCode = \'' + fieldWrapper.get('CurrencyIsoCode').selectedvalue + '\'';
            
            if((iAreaMin > 0 || iAreaMax > 0) && !NullorEmpty(fieldWrapper.get('APAC_Area_UOM__c').selectedvalue))
                req += ' AND Property_Preferences__r.APAC_Area_UOM__c = \'' + fieldWrapper.get('APAC_Area_UOM__c').selectedvalue + '\'';
            
            if(fieldWrapper.get('Minimum_WAULT__c').selectedvalue !=null){
                req += ' AND (Property_Preferences__r.Minimum_WAULT__c <= ' + fieldWrapper.get('Minimum_WAULT__c').selectedvalue +' OR Property_Preferences__r.Minimum_WAULT__c = NULL)';
            }
            if(fieldWrapper.get('Min_Occupancy__c').selectedvalue !=null){
                req += ' AND (Property_Preferences__r.Min_Occupancy__c <= ' + fieldWrapper.get('Min_Occupancy__c').selectedvalue +' OR Property_Preferences__r.Min_Occupancy__c = NULL)';
            }
            
            req += ' AND Property_Preferences__r.Share_deal__c = ' + fieldWrapper.get('Share_deal__c').selectedvalue;
            
            req += ' ORDER BY Property_Preferences__r.Contact__r.Account.Name, Property_Preferences__r.Contact__r.Name LIMIT 1000';
            
        
            
        } catch(Exception Exp){
            system.debug('Unexpected error has occured :'+Exp.getMessage());
        }
            return req;
    }
    
    
    
    
    
    public class ObjectWrapper{
        @AuraEnabled public String objName {get;set;}
        @AuraEnabled public String sectionName {get;set;}
        @AuraEnabled public List<FieldWrapper> fields {get;set;}
        @AuraEnabled public Decimal sortOrder {get;set;}
        @AuraEnabled public String recordTypeId {get;set;}
        @AuraEnabled public String columnsize {get;set;}
    }
    
    public class FieldWrapper{
        @AuraEnabled public String label {get;set;}
        @AuraEnabled public String fieldAPI {get;set;}
        @AuraEnabled public String targetfieldAPI {get;set;}
        @AuraEnabled public String fieldLevelHelp {get;set;}
        @AuraEnabled public String type {get;set;}
        @AuraEnabled public String placeholder {get;set;}
        @AuraEnabled public List<SelectOptions> options {get;set;}
        @AuraEnabled public String selectedvalue {get;set;}
        @AuraEnabled public List<String> selectedvaluelist {get;set;}
        @AuraEnabled public Decimal sortOrder {get;set;}
        @AuraEnabled public Decimal minLength {get;set;}
        @AuraEnabled public PicklistWrapper picklistWrapperobj {get;set;}
        @AuraEnabled public String controllingType {get;set;}
        @AuraEnabled public Boolean isDependent {get;set;}
        @AuraEnabled public String operator {get;set;}
        @AuraEnabled public String objName {get;set;}
        @AuraEnabled public Decimal decimalPlace {get;set;}
    }
    
    public class SelectOptions{
        
        @AuraEnabled public String label {get;set;}
        @AuraEnabled public String value {get;set;}
        
        public SelectOptions(String label, String value){
            this.label = label;
            this.value = value;
        }
    }
    
    public class PicklistWrapper{
        @AuraEnabled public Map<String, List<String>> pickListMap;
        @AuraEnabled public String parentFieldLabel;
        @AuraEnabled public String parentFieldType;
        @AuraEnabled public String childFieldLabel;
        @AuraEnabled public String childFieldType;
        @AuraEnabled public String controllingFieldValue;
        @AuraEnabled public String dependentFieldValue;
        @AuraEnabled public List<String> selectedvalue {get;set;}
        @AuraEnabled public String fieldAPI {get;set;}
        @AuraEnabled public String operator {get;set;}
        
    }
    
    public class PicklistEntryWrapper{
        public String active;
        public String defaultValue;
        public String label;
        public String value;
        public String validFor;
        
    }
    
    public class ResultWrapper{
        @AuraEnabled public List<ContactWrapper> contactData {get; set;}
        @AuraEnabled public List<Column> columnData {get; set;}
        @AuraEnabled public List<SelectOptions> ratings {get;set;}
    }
    
    public class ContactWrapper{
        
        @AuraEnabled public String conAccount {get; set;}
        @AuraEnabled public String enqAccount {get; set;}
        @AuraEnabled public Boolean accMismatch {get; set;}
        @AuraEnabled public String fullName {get; set;}
        @AuraEnabled public String OpportunityName {get; set;}
        @AuraEnabled public String OpportunityStatus {get; set;}
        @AuraEnabled public Date closedDate {get; set;}
        @AuraEnabled public String investorType {get; set;}
        @AuraEnabled public String investorOriginCountry {get; set;}
        @AuraEnabled public String investorOriginRegion {get; set;}
        @AuraEnabled public String enquiryStatus {get; set;}
        @AuraEnabled public String lastActiveStatus {get; set;}
        @AuraEnabled public String assetType {get; set;}
        @AuraEnabled public String assetSubType {get; set;}
        @AuraEnabled public String assignmentType {get; set;}
        @AuraEnabled public String assignmentSubType {get; set;}
        @AuraEnabled public String contactId {get; set;}
        @AuraEnabled public String rating {get; set;}
        @AuraEnabled public String conFirstName {get; set;}
        @AuraEnabled public String conLastName {get; set;}
        @AuraEnabled public String conEmail {get; set;}
        @AuraEnabled public String oppStage {get; set;}
        @AuraEnabled public DateTime lastActiveDate {get; set;}
        @AuraEnabled public String campaignId {get; set;}
        
    }
    
    public class Column{
        @AuraEnabled public string label {get; set;}
        @AuraEnabled public string fieldName {get; set;}
        @AuraEnabled public string type {get; set;}
        @AuraEnabled public Boolean sortable {get; set;}
        @AuraEnabled public Boolean show {get; set;}
        
        public Column(string label, string fieldName, string type, Boolean sortable, Boolean show){
            this.label = label;
            this.fieldName = fieldName;
            this.type = type;
            this.sortable = sortable;
            this.show = show;
        }
        
    }
    
    private boolean NullorEmpty(String input){
        system.debug('=========input=========='+input);
        if(input!=null & input!='' & input!='--None--') {
            return false;
        }else
            return true;
    }
}