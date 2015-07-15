package controllers.affiliate;

import com.google.gson.Gson;
import controllers.application.BaseController;
import java.util.HashMap;
import java.util.Locale;
import model.beans.AffiliateBasic;
import model.logic.Constants;
import model.logic.RestPostClient;
import model.util.HandlerExceptionUtil;
import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author skuarch-lap
 */
@Controller
public class AffiliateList extends BaseController {

    private static final Logger logger = Logger.getLogger(AffiliateList.class);

    @Autowired
    private MessageSource messageSource;

    //==========================================================================
    @RequestMapping(value = {"affiliateList", "/affiliateList"})
    public ModelAndView gift(Locale locale) {

        ModelAndView mav = null;
        JSONArray jsona;
        HashMap parameters;
        String json;
        AffiliateBasic[] affiliates;

        try {
            
            parameters = new HashMap();
            parameters.put("key", "value");
            json = RestPostClient.sendReceive(
                    parameters, 
                    Constants.API_URL, 
                    Constants.API_FIRST_VERSION, 
                    "/affiliate/basic/get/list"
            );
            
            mav = new ModelAndView("affiliate/affiliateList");
            jsona = new JSONArray(json);
            affiliates = new Gson().fromJson(jsona.toString(), AffiliateBasic[].class);
            mav.addObject("affiliates", affiliates);

        } catch (Exception e) {
            HandlerExceptionUtil.alert(mav, messageSource, e, logger, locale);
        }

        return mav;

    }

}
