package controllers.application;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author skuarch
 */
@Controller
public class Company {

    //==========================================================================
    @RequestMapping(value = {"company", "/company", "compañia", "/compañia"})
    public ModelAndView methodName(){

        ModelAndView mav = null;

        try {
            
            mav = new ModelAndView("application/company");
            
        } catch (Exception e) {
        }

        return mav;

    }

}
