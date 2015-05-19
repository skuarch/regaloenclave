package controllers.application;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Locale;
import model.logic.Constants;
import model.logic.RestPostClient;
import model.util.HandlerExceptionUtil;
import org.apache.log4j.Logger;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author skuarch-lap
 */
@Controller
public class Gift extends BaseController {

    private static final Logger logger = Logger.getLogger(GiveAway.class);

    @Autowired
    private MessageSource messageSource;

    //==========================================================================
    @RequestMapping(value = {"gift", "/gift"})
    public ModelAndView gift(
            @RequestParam String name1,
            @RequestParam String lastName1,
            @RequestParam String phone1,
            @RequestParam String email1,
            @RequestParam String name2,
            @RequestParam String lastName2,
            @RequestParam String phone2,
            @RequestParam String email2,
            @RequestParam String holder,
            @RequestParam String number,
            @RequestParam String month,
            @RequestParam int year,
            @RequestParam int secret,
            @RequestParam BigDecimal amount,
            Locale locale) {

        ModelAndView mav = null;
        JSONObject jsono;
        HashMap parameters;
        String json;

        try {
            
            if (name1 == null || name1.length() < 3) {

            }

            if (lastName1 == null || lastName1.length() < 3) {

            }

            if (phone1 != null && phone1.length() < 7) {

            }            

            if (name2 == null || name2.length() < 3 ){
        
            }

            if (lastName2 == null || lastName2.length() < 3){
        
            }
        
            if (phone2 != null && phone2.length() < 7){
        
            }

            if (holder ==  null || holder.length() < 10){
        
            }
        
            if (number == null || number.length() < 16 || number.length() > 16 ){
        
            }

            if (year < 1 || year > 2020) {
                
            }

            if (secret < 1 || secret > 999){        
            }            

            /*if (amount < 100 || amount > 10000 ){
        
            }

            if (amount > 10000) {
                
            }*/

            parameters = new HashMap();
            parameters.put("depositor.name", name1);
            parameters.put("depositor.lastName",lastName1);
            parameters.put("depositor.phone",phone1);
            parameters.put("depositor.email",email1);
            parameters.put("recipient.name",name2);
            parameters.put("recipient.lastName", lastName2);
            parameters.put("recipient.phone", phone2);
            parameters.put("recipient.email",email2);
            parameters.put("holder", holder);
            parameters.put("number", number);
            parameters.put("month",month);
            parameters.put("year",year);
            parameters.put("cvv",secret);
            parameters.put("amount",100.00);            
            
            json = RestPostClient.sendReceive(
                    parameters, 
                    Constants.API_URL, 
                    Constants.API_FIRST_VERSION, 
                    "/transfer/create"
            );
            
            mav = new ModelAndView("application/json");
            jsono = new JSONObject(json);            
            mav.addObject("json", jsono.toString());

        } catch (Exception e) {
            HandlerExceptionUtil.alert(mav, messageSource, e, logger, locale);
        }

        return mav;

    }

}
