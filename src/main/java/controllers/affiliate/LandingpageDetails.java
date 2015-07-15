package controllers.affiliate;

import com.google.gson.Gson;
import java.util.Locale;
import controllers.application.BaseController;
import java.util.HashMap;
import model.beans.AffiliateCompanyBasic;
import model.logic.Constants;
import model.logic.RestPostClient;
import model.util.HandlerExceptionUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.context.MessageSource;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author skuarch
 */
@Controller
public class LandingpageDetails extends BaseController {

    private static final Logger logger = Logger.getLogger(LandingpageDetails.class);

    @Autowired
    private MessageSource messageSource;        

    //==========================================================================
    @RequestMapping(value = {"/landingpageDetails", "landingpageDetails"})
    public ModelAndView methodName(@RequestParam("id") long id,@RequestParam("type") long type ,Locale locale){

        ModelAndView mav = null;
        String json;
        HashMap parameters;
        AffiliateCompanyBasic affiliateCompanyBasic;

        try {
            
            parameters = new HashMap();
            parameters.put("id", id);
            parameters.put("type", type);
            json = RestPostClient.sendReceive(
                    parameters, 
                    Constants.API_URL, 
                    Constants.API_FIRST_VERSION, 
                    "/affiliate/basic/get"
            );           
            
            
            affiliateCompanyBasic = new Gson().fromJson(json, AffiliateCompanyBasic.class);
            mav = new ModelAndView("application/landigpageDetails");
            mav.addObject("affiliateCompanyBasic", affiliateCompanyBasic);
            
        } catch (Exception e) {
            HandlerExceptionUtil.alert(mav, messageSource, e, logger, locale);
        }

        return mav;

    }

}
