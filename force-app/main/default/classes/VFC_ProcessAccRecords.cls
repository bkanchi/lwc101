public class VFC_ProcessAccRecords {
      public List<Account> selAccLst;
      public String accIds;

      // Constructor
      public VFC_ProcessAccRecords(ApexPages.StandardSetController cntlr){
           selAccLst = cntlr.getSelected(); //get selected records from account list view
           accIds = '';  
           for(Account acc : selAccLst){
               accIds += acc.Id + ','; //build list of ids string concatenated with comma                         
            }
           accIds = accIds.removeEnd(','); 
      } 

      public PageReference redirectToLC(){
            String returnUrl = '/lightning/cmp/c__ProcessListView?c__listofAccounts='+accIds;
            PageReference pgReturnPage = new PageReference(returnUrl);
            pgReturnPage.setRedirect(true);
            return pgReturnPage;
      }

  }