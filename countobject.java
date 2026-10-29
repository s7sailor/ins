package org.example;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.List;

public class countobject {

    public static void main(String[] args) {

        WebDriver wd = new ChromeDriver();

        wd.get("https://programiz.com");

        List<WebElement> elements = wd.findElements(By.xpath("//*"));

        System.out.println("TOTAL ELEMENTS COUNT : " + elements.size());
        System.out.println("Paragraphs : " + wd.findElements(By.tagName("p")).size());
        System.out.println("Links : " + wd.findElements(By.tagName("a")).size());
        System.out.println("Images : " + wd.findElements(By.tagName("img")).size());
        System.out.println("Buttons : " + wd.findElements(By.tagName("button")).size());
        System.out.println("Input Fields : " + wd.findElements(By.tagName("input")).size());
        System.out.println("Forms : " + wd.findElements(By.tagName("form")).size());
        System.out.println("Tables : " + wd.findElements(By.tagName("table")).size());

        wd.quit();
    }
}
