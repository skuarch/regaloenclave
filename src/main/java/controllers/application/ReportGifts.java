package controllers.application;

import java.util.Locale;
import model.util.HandlerExceptionUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.context.MessageSource;
import org.apache.log4j.Logger;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author skuarch
 */
@Controller
public class ReportGifts extends BaseController {

    private static final Logger logger = Logger.getLogger(ReportGifts.class);

    @Autowired
    private MessageSource messageSource;        

    //==========================================================================
    @RequestMapping(value = {"/reportGifts", "reportGifts"})    
    public ModelAndView reportGifts(@RequestParam String email, Locale locale){        

        ModelAndView mav = new ModelAndView("application/json");
        JSONObject jsono = null;
        
        try {
            
            jsono = new JSONObject();
            jsono.put("status", "ok");
            mav.addObject("json", jsono.toString());
            
        } catch (Exception e) {
           HandlerExceptionUtil.alert(mav, messageSource, e, logger, locale);
        }
        
        return mav;

    }

}
