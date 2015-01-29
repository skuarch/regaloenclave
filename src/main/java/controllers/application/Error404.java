package controllers.application;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author skuarch
 */
@Controller
public class Error404 extends BaseController {
    
    //==========================================================================
    @RequestMapping(value = {"error404", "/error404"})
    public ModelAndView error404(){
        ModelAndView mav = new ModelAndView("application/error404");
        return mav;
    }
    
}
