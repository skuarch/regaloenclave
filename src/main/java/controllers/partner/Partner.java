package controllers.partner;

import java.util.Locale;
import controllers.application.BaseController;
import model.logic.Constants;
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
public class Partner extends BaseController {

    private static final Logger logger = Logger.getLogger(Partner.class);

    @Autowired
    private MessageSource messageSource;        

    //==========================================================================
    @RequestMapping(value = {"/partner", "partner"})
    public ModelAndView methodName(Locale locale){

        ModelAndView mav = null;

        try {
            
            mav = new ModelAndView("affiliate/affiliate");
            mav.addObject("ip", Constants.IP_ADDRESSS);
            
        } catch (Exception e) {
            HandlerExceptionUtil.alert(mav, messageSource, e, logger, locale);
        }

        return mav;

    }

}
