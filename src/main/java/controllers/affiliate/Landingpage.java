package controllers.affiliate;

import controllers.application.BaseController;
import java.util.Locale;
import model.logic.Constants;
import model.util.HandlerExceptionUtil;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author skuarch
 */
@Controller
public class Landingpage extends BaseController {
 
    private static final Logger logger = Logger.getLogger(Affiliates.class);

    @Autowired
    private MessageSource messageSource;        
    
    //==========================================================================
    @RequestMapping(value = {"landigpage/{id}/{type}", "/landigpage/{id}/{type}"})
    public ModelAndView landingpage(@PathVariable("id") long id,@PathVariable("type") long type, Locale locale){
        
        ModelAndView mav = null;

        try {            
            
            mav = new ModelAndView("application/landigpage");            
            mav.addObject("id", id);
            mav.addObject("type", type);            
            
        } catch (Exception e) {
            HandlerExceptionUtil.alert(mav, messageSource, e, logger, locale);
        }

        return mav;        
    
    }
    
}