/**
 * 
 */
package com.kopiko.controller.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kopiko.service.IAccountService;



/**
 * @author rianta9
 * @datecreated 16 thg 3, 2021 11:22:17
 */

@Controller
public class LoginController {

	@Autowired
    IAccountService service;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLoginPage(ModelMap model) {
        System.out.println("LoginController - showLoginPage");

        return "web/login";
    }

    // Action này không được Call.
    // Do login form đang setting gọi url của Security
    // @RequestMapping(value = "/login-check", method = RequestMethod.POST)
    @RequestMapping(value = "/login-check", method = RequestMethod.GET)
    public String showWelcomePage(ModelMap model, @RequestParam String username, @RequestParam String password, HttpSession session) {
        System.out.println("LoginController - showWelcomePage");

        if (service.checkAdmin(username, password)) {
            model.put("name", username);
            model.put("password", password);
            session.setAttribute("username", username);
            return "admin/home";
        }

        if (service.checkUser(username, password)) {
            model.put("name", username);
            model.put("password", password);
            session.setAttribute("username", username);
            return "web/home";
        }

        model.put("errorMessage", "Invalid Credentials");

        return "login";
    }

    @RequestMapping(value = "/logoutSuccessful", method = RequestMethod.GET)
    public String logoutSuccessfulPage(Model model) {
        System.out.println("MainController - logoutSuccessfulPage");

        model.addAttribute("title", "Logout");
        return "login";
    }
}