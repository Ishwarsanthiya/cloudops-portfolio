package com.cloudops;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/")
    public String home() {
        return "CloudOps Portfolio App — Ishwar | Running on Kubernetes!";
    }

    @GetMapping("/health")
    public String health() {
        return "OK";
    }
}