package com.example.devopsDemo.hello;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/demo")
public class Hello {

    @GetMapping("/hello")
    public String callhello(){
        return "hello to dev";
    }
}
