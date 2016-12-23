package com.ecamstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Yuth on 12/8/2016.
 */
@Controller
public class HomeController {
    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @RequestMapping("/login")
    public String login(@RequestParam(value = "error", required = false) String error, @RequestParam(value = "logout", required = false) String logout, Model model) {
        if (error != null) {
            model.addAttribute("error", "ឈ្មោះអ្នកប្រើប្រាស់ និងលេខសម្ងាត់មិនត្រឹមត្រូវ");
        }
        if (logout != null) {
            model.addAttribute("msg", "លោកអ្នកបានធ្វើការចាកចេញរួចរាល់ហើយ");
        }
        return "login";
    }
}
