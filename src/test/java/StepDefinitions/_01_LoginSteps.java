package StepDefinitions;

import Pages.DialogContent;
import Utilities.GWD;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.bouncycastle.crypto.modes.gcm.GCMExponentiator;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.testng.Assert;

import java.time.Duration;

public class _01_LoginSteps {
    DialogContent dc=new DialogContent();
    @Given("Navigate to basqar")
    public void navigateToBasqar() {
        GWD.getDriver().get("https://demo.mersys.io/");
        GWD.getDriver().manage().window().maximize();
        GWD.getDriver().manage().deleteAllCookies();
    }

    @When("Enter username and password and click login button")
    public void enterUsernameAndPasswordAndClickLoginButton() {

        //GWD.wait.until(ExpectedConditions.textToBePresentInElement(dc.password,"Password"));
        //GWD.wait.until(ExpectedConditions.elementToBeClickable(dc.loginButton));
        //GWD.wait.until(ExpectedConditions.elementToBeClickable(dc.acceptCookiesBtn));

        GWD.getDriver().manage().timeouts().implicitlyWait(Duration.ofSeconds(8));

        dc.acceptCookiesBtn.click();

        dc.username.sendKeys("richfield.edu");
        dc.password.sendKeys("Richfield2020!");
        dc.loginButton.click();
    }

    @Then("User should login successfuly")
    public void userShouldLoginSuccessfuly() {
        Assert.assertTrue(dc.dashboard.getText().contains("Dashboard"));
    }
}
