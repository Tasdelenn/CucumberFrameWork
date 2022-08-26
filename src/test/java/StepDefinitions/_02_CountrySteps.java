package StepDefinitions;

import Pages.DialogContent;
import Pages.LeftNav;
import Pages.Parent;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class _02_CountrySteps extends Parent {

    LeftNav ln = new LeftNav();
    DialogContent dc = new DialogContent();

    /******* BACKGROUND ******/
    @And("Navigate to country page")
    public void navigateToCountryPage() {
        ln.findAndClick("setupOne"); // Setup Click
        ln.findAndClick("parameters"); // Parameters Click
        ln.findAndClick("countries"); // Countries Click
    }

    /******** COUNTRY *******/
    @When("Create a country")
    public void createACountry() {
        dc.findAndClick("addButton");
        dc.findAndSend("nameInput", "hakanYa");
        dc.findAndSend("codeInput", "33");
        dc.findAndClick("saveButton");
    }
    @When("Delete a country")
    public void deleteACountry() {

        dc.findAndSend("nameDelInput", "hakanYa");
        dc.findAndClick("searchButton"); // arama butonuna bas
        waitUntilLoading();
        dc.findAndClick("deleteButton");// silme butonua bas
        dc.findAndClick("deleteDialogBtn");// dilogdaki silme butonuna bas
    }
    @Then("Success message should be displayed")
    public void successMessageShouldBeDisplayed() {
        dc.findAndContainsText("successMessage","success");
    }

    /******** COUNTRY WITH PARAMETERS SCENARIOS *******/
    @When("Create a country name as {string} code as {string}")
    public void createACountryNameAsCodeAs(String name, String code) {
        dc.findAndClick("addButton");
        dc.findAndSend("nameInput", name);
        dc.findAndSend("codeInput", code);
        dc.findAndClick("saveButton");
    }
    @When("Delete a country name as {string} code as {string}")
    public void deleteACountryNameAsCodeAs(String name, String code) {

        dc.findAndSend("nameDelInput", name);
        dc.findAndClick("searchButton"); // arama butonuna bas
        waitUntilLoading();
        dc.findAndClick("deleteButton");// silme butonua bas
        dc.findAndClick("deleteDialogBtn");// dilogdaki silme butonuna bas
    }
    //  @Then("Success message should be displayed")        //YUKARIDA VAR
    //  public void successMessageShouldBeDisplayed() {
    //      dc.findAndContainsText("successMessage","success");
    //  }

    /***********************************************************/
}
