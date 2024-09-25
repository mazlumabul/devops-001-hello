package com.mazlumabul.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalTime;


@RestController
@RequestMapping()
public class DevOpsController {
    /*
    public int f(int x) {  // f(x) = 2x+1
        return 2 * x + 1;
    } */


    @GetMapping()
    public String devopsHello() {
        return "Hello World" + LocalTime.now();
    }


    @GetMapping("/info")
    public String info() {
        return " DEVOPS INFO : " + LocalTime.now();
    }
}
