package controllers.application;

import java.util.Locale;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author skuarch
 */
@Controller
public class Welcome {

    @RequestMapping(value = {"/welcome", "welcome", "/", "inicio", "home", "index"})
    public ModelAndView welcome(Locale locale) {

        System.out.println("el lenguaje: " + locale.getDisplayLanguage());

        ModelAndView mav = new ModelAndView("application/welcome");
        return mav;

    }

}
