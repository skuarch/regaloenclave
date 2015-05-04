package controllers.application;

import java.util.HashMap;
import model.beans.Partner;
import model.logic.Constants;
import model.logic.RestPostClient;
import model.util.ApplicationUtil;
import org.apache.log4j.Logger;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author skuarch-lap
 */
@Controller
public class CreatePartner extends BaseController {

    private static final Logger logger = Logger.getLogger(CreatePartner.class);

    //==========================================================================
    @RequestMapping(value = "createPartner")
    public ModelAndView createAffiliatePerson(@ModelAttribute Partner partner) {

        ModelAndView mav = new ModelAndView("application/json");
        JSONObject jsono = new JSONObject();
        HashMap parameters = null;
        String jsonString = null;

        try {

            if (validatePartner(partner)) {
                
                parameters = ApplicationUtil.createPartner(partner);
                jsonString = RestPostClient.sendReceive(parameters, 
                        Constants.API_URL, 
                        Constants.API_FIRST_VERSION, 
                        Constants.URI_PARTNER_CREATE
                );
                jsono.put("created", true);
                
            } else {
                jsono.put("created", false);
            }

            mav.addObject("json", jsono.toString());

        } catch (Exception e) {
            logger.error(this.getClass(), e);
        }

        return mav;

    }

    //==========================================================================
    private boolean validatePartner(Partner partner) {

        if (partner.getName().length() < 2) {
            logger.error("name is too short");
            return false;
        }

        if (partner.getLastName().length() < 5) {
            logger.error("last name is too short");
            return false;
        }

        if (partner.getEmail().length() < 4) {
            logger.error("email is too short");
            return false;
        }

        if (partner.getPhone().length() < 6) {
            logger.error("phone is too short");
            return false;
        }

        if (partner.getPassword().length() != 32) {
            logger.error("password is too short");
            return false;
        }

        return true;

    }

}
