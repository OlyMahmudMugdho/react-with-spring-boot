package com.mahmud.react_with_spring_boot.controllers;

import com.mahmud.react_with_spring_boot.model.Response;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class ExampleController {
    @GetMapping()
    public ResponseEntity<Response> index() {
        return ResponseEntity.ok(new Response(true,"Hello World"));
    }
}
