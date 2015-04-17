package controllers.application;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author skuarch
 */
@Controller
public class Contact extends BaseController {

    //==========================================================================
    @RequestMapping(value = {"contact", "/contact" ,"contacto", "/contacto"})
    public ModelAndView methodName(){

        ModelAndView mav = null;

        try {
            
            mav = new ModelAndView("application/contact");
            
        } catch (Exception e) {
        }

        return mav;

    }

}
