package com.atits.controller;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public Map<String, Object> login(@RequestParam("params") String params, HttpSession session) throws Exception {
        Map<String, String> map = new HashMap<String, String>();
        ObjectMapper mapper = new ObjectMapper();
        map = mapper.readValue(params, Map.class);

        String imageCode =map.get("imageCode");//获取页面参数：imageCode
        //person对象
        Person person = loginService.login(Integer.parseInt(map.get("sysId")),map.get("userName"), map.get("password"));
        Map<String, Object> map1 = new HashMap<String, Object>();
        //session.invalidate();


/*   ************************
        //添加验证码：
        //HttpSession session = request.getSession();
        //boolean flag = false;//比对
        //页面调用的参数：
        String checkCode = request.getParameter("checkCode");//securityCode
        if(checkCode == null || "".equals(checkCode)) {//忽视大小写：
            map1.put("errMsg", "请填写验证码");
            return map1;
        }
        //session 验证码信息比对
        String check_Code = String.valueOf(request.getSession().getAttribute(checkCode));
        if(!checkCode.equalsIgnoreCase(check_Code)) {
            map1.put("errMsg", "验证码填写错误");
            return map1;
        }
  */
        //判断：验证码：是否正确：
        /*String imageCode = (String)session.getAttribute("imageCode");//imageCode
        if(!code.equalsIgnoreCase(imageCode)) {
            map1.put("errMsg", "验证码填写错误");//IMAGE_CODE_ERROR=3
            return map1;
        }*/

       if(imageCode.equals(session.getAttribute("sRand"))){//判断验证码正确：
           if (person == null) {
               map1.put("state", 0);
           } else {
               if (person.getState() == 1) {
                   session.setAttribute("person", person);
               } else {
                   map1.put("state", 1);
               }
           }
       }else {//验证码对：但用户名不对
           map1.put("state",2);
       }
        return map1;

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
