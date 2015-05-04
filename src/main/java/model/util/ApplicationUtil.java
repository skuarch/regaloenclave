package model.util;

import java.util.HashMap;
import model.beans.Partner;

/**
 *
 * @author skuarch-lap
 */
public class ApplicationUtil {

    private ApplicationUtil() {
    }

    //==========================================================================
    public static HashMap<String, Object> createPartner(Partner affiliatePerson) throws Exception {

        HashMap hm = new HashMap();

        try {

            hm.put("person.name", affiliatePerson.getName());
            hm.put("person.lastName", affiliatePerson.getLastName());
            hm.put("person.email", affiliatePerson.getEmail());
            hm.put("person.phone", affiliatePerson.getPhone());
            hm.put("person.gender.id", affiliatePerson.getGender());
            hm.put("password", affiliatePerson.getPassword());

        } catch (Exception e) {
            throw e;
        }

        return hm;

    }

}
