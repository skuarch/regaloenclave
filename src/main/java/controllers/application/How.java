package controllers.application;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author skuarch
 */
@Controller
public class How {

    //==========================================================================
    @RequestMapping(value = {"how", "/how", "como" ,"/como"})
    public ModelAndView methodName(){

        ModelAndView mav = null;

        try {
            
            mav = new ModelAndView("application/how");
            
        } catch (Exception e) {
        }

        return mav;

    }

}
