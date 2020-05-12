package com.mvc.controller;

import com.mvc.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.support.RequestContext;

import javax.servlet.http.HttpServletRequest;

/**
 * @Classname UserController
 * @Description TODO
 * @Author 将烬星火是否太炽热, 明日黄花会开败阡陌
 * @Date 2020-05-07 21:56
 * @Version 1.0
 **/
@Controller
public class UserController {
    @RequestMapping(value = "/")
    public String index(){
        return "index";
    }

    // 跳转到注册界面
    @RequestMapping(value = "/registerFormPage")
    public String registerForm(Model model){
        User user = new User();
        model.addAttribute("user", user);
        return "registerFormPage";
    }

    @RequestMapping(value = "/{formName}")
    public String registerForm(@PathVariable String formName, Model model){
        User user = new User();
        model.addAttribute("user", user);
        return formName;  // 动态跳转页面
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@ModelAttribute @Validated User user, Model model, HttpServletRequest request){

        // 从后台代码获取国际化资源中的信息
        RequestContext requestContext = new RequestContext(request);

        String username = requestContext.getMessage("userName");

        System.out.println(username);

        model.addAttribute("user", user);

        return "success";
    }

}
