package DataBase;

import com.ibm.watson.developer_cloud.language_translation.v2.LanguageTranslation;
import com.ibm.watson.developer_cloud.language_translation.v2.model.TranslationResult;
import org.json.JSONObject;

public class Translation
{
    public static String getTranslation(String text,String lan)
    {

        if(lan.equals("en"))
            return text;

        LanguageTranslation service = new LanguageTranslation();
        service.setUsernameAndPassword("755b089d-f73e-43cd-8967-f270e47efd3f", "Cy4loOtExkWM");
        TranslationResult result = service.translate(text, "en", lan);
        JSONObject object = new JSONObject(result.toString());
        JSONObject retVal = (JSONObject)object.getJSONArray("translations").get(0);
        System.out.println(retVal.get("translation"));
        return retVal.get("translation").toString();
    }
}
