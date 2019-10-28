package com.thinkgem.jeesite.modules.sys.web;

import com.google.common.collect.Lists;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.sys.entity.Office;
import com.thinkgem.jeesite.modules.sys.entity.Role;
import com.thinkgem.jeesite.modules.sys.entity.User;
import com.thinkgem.jeesite.modules.sys.service.SystemService;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "static/sys/reg")
public class RegisterController extends BaseController {

    @Autowired
    private SystemService systemService;

    @RequestMapping(value = {"reg", ""})
    public String reg(User user, HttpServletRequest request, Model model, RedirectAttributes redirectAttributes) {
        System.out.println("FUCK&&&&&&&&&&&&&&&&");
        return "modules/sys/userReg";
    }

    public String checkLoginName(String oldLoginName, String loginName) {
        if (loginName !=null && loginName.equals(oldLoginName)) {
            return "true";
        } else if (loginName !=null && systemService.getUserByLoginName(loginName) == null) {
            return "true";
        }
        return "false";
    }

    @RequestMapping(value = "save")
    public String save(User user, HttpServletRequest request, Model model, RedirectAttributes redirectAttributes) {
        System.out.println("R u here man????");

        user.setOffice(new Office("1"));
        user.setCompany(new Office("2"));
        user.setPassword(SystemService.entryptPassword(user.getNewPassword()));
        user.setCreateBy(new User("1"));
        user.setUpdateBy(new User("1"));
        user.setLoginFlag("0");
        user.setCreateDate(new Date());
        user.setUpdateDate(new Date());
        System.out.println(user.getLoginName() + "****" + user.getEmail() + "))))))" + user.getPassword() + "&&&&&&" );

        if (!"true".equals(checkLoginName(user.getOldLoginName(), user.getLoginName()))){
            addMessage(model, "保存用户'" + user.getLoginName() + "'失败，登录名已存在");
            return "redirect:" + adminPath;
        }
        List<Role> roleList = Lists.newArrayList();
//        List<String> roleIdList = user.getRoleIdList();
        List<String> roleIdList = new ArrayList<String>();
        roleIdList.add("6");
//        System.out.println(systemService.findAllRole() + "!!!!!!!");
        for (Role r : systemService.findAllRole()){
//            System.out.println("********");
            if (roleIdList.contains(r.getId())){
                System.out.println("Got it man!!");
                roleList.add(r);
            }
        }

        user.setRoleList(roleList);
//        System.out.println(user.getRoleList() + "@@@@@@@@");
        // 保存用户信息
        systemService.saveUser(user);
        // 清除当前用户缓存
        if (user.getLoginName().equals(UserUtils.getUser().getLoginName())){
            UserUtils.clearCache();
//            UserUtils.getCacheMap().clear();
        }
        addMessage(redirectAttributes, "Add a new user '" + user.getLoginName() + "'successful!");

        return "redirect:" + adminPath ;
    }
}
