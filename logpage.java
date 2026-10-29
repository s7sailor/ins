package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class logpage {
    WebDriver driver;

    By username = By.id("user-name");
    By password = By.id("password");
    By loginButton = By.id("login-button");

    public logpage(WebDriver driver) {
        this.driver = driver;
    }

    public void login(String user, String pass) {
        driver.findElement(username).sendKeys(user);
        driver.findElement(password).sendKeys(pass);
        driver.findElement(loginButton).click();
    }
}

class log extends logpage {
    public log(WebDriver driver) {
        super(driver);
    }
}
