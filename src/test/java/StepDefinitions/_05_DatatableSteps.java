package StepDefinitions;

import Pages.DialogContent;
import Pages.LeftNav;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;

import java.util.List;

public class _05_DatatableSteps {

    LeftNav ln = new LeftNav();
    DialogContent dc = new DialogContent();

    @And("Click on the element in the left Nav")
    public void clickOnTheElementInTheLeftNav(DataTable elements) {

        List<String> listElement = elements.asList(String.class);

        for (int i=0; i< listElement.size(); i++){
            System.out.println("listElement =" + listElement.get(i));
            ln.findAndClick(listElement.get(i));
        }

    }

    @And("Click ın the element in the Dialog")
    public void clickInTheElementInTheDialog(DataTable elements) {


        List<String> listElement = elements.asList(String.class);

        for (int i=0; i< listElement.size(); i++){
            System.out.println("listElement =" + listElement.get(i));
            dc.findAndClick(listElement.get(i));
        }



    }

    @And("User sending the keys in Dialog content")
    public void userSendingTheKeysInDialogContent(DataTable elements) {
        List<List<String>> listElements = elements.asLists(String.class);

        for (int i=0; i< listElements.size(); i++)
            dc.findAndSend(listElements.get(i).get(0), listElements.get(i).get(1));
        // listin ilk elemanına (web elemanı)
    }
}
