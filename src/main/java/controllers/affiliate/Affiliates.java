package controllers.affiliate;

import controllers.application.BaseController;
import java.util.Locale;
import model.logic.Constants;
import model.util.HandlerExceptionUtil;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author skuarch
 */
@Controller
public class Affiliates extends BaseController {
 
    private static final Logger logger = Logger.getLogger(Affiliates.class);

    @Autowired
    private MessageSource messageSource;        
    
    @RequestMapping(value = {"affiliates", "afiliados","asociados", "affiliateDirectory"})
    public ModelAndView affiliatesContainer(Locale locale){
    
        ModelAndView mav = null;

        try {
            
            mav = new ModelAndView("application/affiliates");            
            
        } catch (Exception e) {
            HandlerExceptionUtil.alert(mav, messageSource, e, logger, locale);
        }

        return mav;        
    
    }
    
}