package com.stripe.android.net;

import com.stripe.android.model.Card;
import com.stripe.android.model.Token;
import com.stripe.android.util.StripeJsonUtils;
import com.stripe.android.util.StripeTextUtils;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class TokenParser {
    private static final String FIELD_CARD = "card";
    private static final String FIELD_CREATED = "created";
    private static final String FIELD_ID = "id";
    private static final String FIELD_LIVEMODE = "livemode";
    private static final String FIELD_TYPE = "type";
    private static final String FIELD_USED = "used";

    public static Token parseToken(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        String string = StripeJsonUtils.getString(jSONObject, "id");
        Long valueOf = Long.valueOf(jSONObject.getLong(FIELD_CREATED));
        Boolean valueOf2 = Boolean.valueOf(jSONObject.getBoolean(FIELD_LIVEMODE));
        String asTokenType = StripeTextUtils.asTokenType(StripeJsonUtils.getString(jSONObject, "type"));
        Boolean valueOf3 = Boolean.valueOf(jSONObject.getBoolean(FIELD_USED));
        Card parseCard = CardParser.parseCard(jSONObject.getJSONObject("card"));
        return new Token(string, valueOf2.booleanValue(), new Date(valueOf.longValue() * 1000), valueOf3, parseCard, asTokenType);
    }
}
