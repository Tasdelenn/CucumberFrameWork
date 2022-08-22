package StepDefinitions;

import Pages.LeftNav;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;

import java.util.List;

public class _05_DatatableSteps {

    LeftNav ln = new LeftNav();

    @And("Click on the element in the left Nav")
    public void clickOnTheElementInTheLeftNav(DataTable elements) {

        List<String> listElement = elements.asList(String.class);

        for (int i=0; i< listElement.size(); i++){
            System.out.println("listElement =" + listElement.get(i));
            ln.findAndClick(listElement.get(i));
        }

    }
}
