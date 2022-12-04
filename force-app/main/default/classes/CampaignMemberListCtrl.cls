public class CampaignMemberListCtrl {
      public List<CampaignMember> selAccLst;
      public String accIds;

      // Constructor
      public CampaignMemberListCtrl(ApexPages.StandardSetController cntlr){
           selAccLst = cntlr.getSelected(); //get selected records from account list view
           accIds = '';  
           for(CampaignMember acc : selAccLst){
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