package controllers.application;

import java.util.HashMap;
import java.util.Locale;
import model.logic.Constants;
import model.logic.RestPostClient;
import model.util.HandlerExceptionUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.context.MessageSource;
import org.apache.log4j.Logger;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestParam;

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
    public ModelAndView reportGifts(@RequestParam String email, Locale locale) {

        ModelAndView mav = new ModelAndView("application/json");
        JSONObject jsono = null;
        String json;
        HashMap parameters;

        try {

            if (email == null || email.length() < 1) {
                jsono = new JSONObject();
                jsono.put("status", false);
                mav.addObject("json", jsono.toString());
            }

            parameters = new HashMap();
            parameters.put("email", email);
            json = RestPostClient.sendReceive(
                    parameters,
                    Constants.API_URL,
                    Constants.API_FIRST_VERSION, 
                    Constants.URI_REPORT_GIFT_EMAIL);

            jsono = new JSONObject(json);
            jsono.put("status", true);
            mav.addObject("json", jsono.toString());

        } catch (Exception e) {
            HandlerExceptionUtil.alert(mav, messageSource, e, logger, locale);
        }

        return mav;

    }

}
