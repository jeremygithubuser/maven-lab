package bdd;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import services.Calculator;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;

public class CalculatorStepDefinitions {

    private Calculator calculator;
    private int result;

    @Given("I have a calculator")
    public void i_have_a_calculator() {
        calculator = new Calculator();
    }

    @When("I add {int} and {int}")
    public void i_add_and(Integer a, Integer b) {
        result = calculator.Add(a,b);
    }

    @Then("I should get {int}")
    public void i_should_get(Integer expected) {
        assertThat(result).isEqualTo(expected);
    }
}
