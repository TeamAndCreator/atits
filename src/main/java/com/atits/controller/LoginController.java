package com.atits.controller;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.atits.entity.Msg;
import com.atits.utils.ImageUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.atits.entity.Profile;
import com.atits.entity.Person;
import com.atits.service.LaboratoryService;
import com.atits.service.LoginService;
import com.atits.service.ProfileService;
import com.atits.service.StationService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class LoginController {
    //验证码：
    private String error;
    private String imageCode;
    public String getError() {
        return error;
    }


    public void setError(String error) {
        this.error = error;
    }
    public String getImageCode() {
        return imageCode;
    }
    public void setImageCode(String imageCode) {
        this.imageCode = imageCode;
    }

    @Resource
    private LoginService loginService;

    @Resource
    private LaboratoryService laboratoryService;// 注入业务层

    @Resource
    private StationService stationService;

    @Resource
    private ProfileService profileService;

    public LaboratoryService getLaboratoryService() {
        return laboratoryService;
    }

    public void setLaboratoryService(LaboratoryService laboratoryService) {
        this.laboratoryService = laboratoryService;
    }

    public StationService getStationService() {
        return stationService;
    }

    public void setStationService(StationService stationService) {
        this.stationService = stationService;
    }

    public LoginService getLoginService() {
        return loginService;
    }

    public void setLoginService(LoginService loginService) {
        this.loginService = loginService;
    }

    public ProfileService getProfileService() {
        return profileService;
    }

    public void setProfileService(ProfileService profileService) {
        this.profileService = profileService;
    }

    /**
     * 登录验证
     *
     * @param params
     * @param session
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public Msg login(@RequestParam("params") String params, HttpSession session) throws Exception {
        Msg msg=new Msg();
        Map<String, String> map = new HashMap<String, String>();
        ObjectMapper mapper = new ObjectMapper();
        map = mapper.readValue(params, Map.class);

        String imageCode =map.get("imageCode");//获取页面参数：imageCode
        //person对象
        Person person = loginService.login(Integer.parseInt(map.get("sysId")),map.get("userName"), map.get("password"));

        //session.invalidate();
       if(imageCode.equals(session.getAttribute("sRand"))){//判断验证码正确：
           if (person == null) {
               msg.setCode(300);
               msg.setMsg("用户名不存在或密码错误");
           } else {
               if (person.getState() == 1) {
                   session.setAttribute("person", person);
                   msg.setCode(200);
                   msg.setMsg("登录成功");
                   msg.add("person",person);
               } else {
                   msg.setCode(400);
                   msg.setMsg("用户未激活，请联系管理员！");
               }
           }
       }else {//验证码对：但用户名不对
           msg.setCode(100);
           msg.setMsg("验证码错误！");
       }
        return msg;

    }

    /**
     * 登录跳转
     *
     * @param session
     * @return
     */
    @RequestMapping(value = "/to_login", method = RequestMethod.GET)
    public String toLogin(HttpSession session) {
        session.invalidate();//
        return "redirect:/";
    }

    /**
     * 退出登录
     *
     * @param session
     * @return
     */
    @RequestMapping(value = "/login_out", method = RequestMethod.GET)
    public String loginOut(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }


    /**
     * 注册页面跳转
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/to_register", method = RequestMethod.GET)
    public String toRegister(Model model) {
        Map<String, Object> register = loginService.toRegister();
        model.addAttribute("role", register.get("role"));
        model.addAttribute("system", register.get("system"));
        model.addAttribute("person", new Person());
        return "register";
    }

    /****
     * 注册
     *
     * @return
     *
     * @return
     */
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(Person person) {

        Profile profile = new Profile();
        person.setProfile(profile);
        profile.setPerson(person);
        loginService.register(person);
        return "redirect:/";

    }

    @ResponseBody
    @RequestMapping(value = "/laborStation", method = RequestMethod.GET)
    public List<String> getLaborStation(@RequestParam("role") String role, @RequestParam("sysId") Integer sysId) {
        List<String> names = new ArrayList<String>();
        if (role.equals("岗位专家")) {
            names = laboratoryService.findNameBySysId(sysId);
        }
        if (role.equals("试验站站长")) {
            names = stationService.findNameBySysId(sysId);
        }
        return names;
    }


    /**
     * 生成验证码图片
     * @throws IOException
     */
    @RequestMapping("/createImage")
    public void createImage(HttpServletResponse response, HttpSession session) throws IOException {
        //创建验证码图片
        Map<String, BufferedImage> map = ImageUtil.createImage();
        //获取验证码，放入session
        String code = map.keySet().iterator().next();//code 放入 input id="code"
        session.setAttribute("imageCode", code);
        //获取图片
        BufferedImage image = map.get(code);//image---页面使用
        //向页面输出图片
        response.setContentType("image/jpeg");
        OutputStream os = response.getOutputStream();
        ImageIO.write(image, "jpeg", os);
        os.close();
    }

}
