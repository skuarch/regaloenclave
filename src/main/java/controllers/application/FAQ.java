package controllers.application;

import java.util.Locale;
import controllers.application.BaseController;
import model.util.HandlerExceptionUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.context.MessageSource;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author skuarch
 */
@Controller
public class FAQ extends BaseController {

    private static final Logger logger = Logger.getLogger(FAQ.class);

    @Autowired
    private MessageSource messageSource;        

    //==========================================================================
    @RequestMapping(value = {"/faq", "faq"})
    public ModelAndView methodName(Locale locale){

        ModelAndView mav = null;

        try {
            
            mav = new ModelAndView("application/faq");
            
        } catch (Exception e) {
            HandlerExceptionUtil.alert(mav, messageSource, e, logger, locale);
        }

        return mav;

    }

}
