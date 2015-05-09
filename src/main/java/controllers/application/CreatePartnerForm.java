package controllers.application;

import java.util.Locale;
import javax.servlet.http.HttpServletResponse;
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
public class CreatePartnerForm extends BaseController {

    private static final Logger logger = Logger.getLogger(CreatePartnerForm.class);

    @Autowired
    private MessageSource messageSource;        

    //==========================================================================
    @RequestMapping(value = {"/createPartnerForm", "createPartnerForm","createPartnerForm","/createPartnerForm"})
    public ModelAndView methodName(HttpServletResponse response, Locale locale){

        ModelAndView mav = null;

        try {
            
            setHeaderNoChache(response);
            mav = new ModelAndView("application/createPartnerForm");
            
        } catch (Exception e) {
            HandlerExceptionUtil.alert(mav, messageSource, e, logger, locale);
        }

        return mav;

    }

}
