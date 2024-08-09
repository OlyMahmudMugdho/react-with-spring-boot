package com.mahmud.react_with_spring_boot.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/{[path:[^\\.]*}")
public class ServeReactPageController {
    public String forward() {
        return "forward:/";
    }
}
