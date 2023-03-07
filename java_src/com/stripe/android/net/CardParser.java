package com.stripe.android.net;

import com.stripe.android.model.Card;
import com.stripe.android.util.StripeJsonUtils;
import com.stripe.android.util.StripeTextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class CardParser {
    static final String FIELD_ADDRESS_CITY = "address_city";
    static final String FIELD_ADDRESS_COUNTRY = "address_country";
    static final String FIELD_ADDRESS_LINE1 = "address_line1";
    static final String FIELD_ADDRESS_LINE2 = "address_line2";
    static final String FIELD_ADDRESS_STATE = "address_state";
    static final String FIELD_ADDRESS_ZIP = "address_zip";
    static final String FIELD_BRAND = "brand";
    static final String FIELD_COUNTRY = "country";
    static final String FIELD_CURRENCY = "currency";
    static final String FIELD_EXP_MONTH = "exp_month";
    static final String FIELD_EXP_YEAR = "exp_year";
    static final String FIELD_FINGERPRINT = "fingerprint";
    static final String FIELD_FUNDING = "funding";
    static final String FIELD_LAST4 = "last4";
    static final String FIELD_NAME = "name";

    public static Card parseCard(String str) throws JSONException {
        return parseCard(new JSONObject(str));
    }

    public static Card parseCard(JSONObject jSONObject) throws JSONException {
        return new Card(null, Integer.valueOf(jSONObject.getInt(FIELD_EXP_MONTH)), Integer.valueOf(jSONObject.getInt(FIELD_EXP_YEAR)), null, StripeJsonUtils.optString(jSONObject, "name"), StripeJsonUtils.optString(jSONObject, FIELD_ADDRESS_LINE1), StripeJsonUtils.optString(jSONObject, FIELD_ADDRESS_LINE2), StripeJsonUtils.optString(jSONObject, FIELD_ADDRESS_CITY), StripeJsonUtils.optString(jSONObject, FIELD_ADDRESS_STATE), StripeJsonUtils.optString(jSONObject, FIELD_ADDRESS_ZIP), StripeJsonUtils.optString(jSONObject, FIELD_ADDRESS_COUNTRY), StripeTextUtils.asCardBrand(StripeJsonUtils.optString(jSONObject, FIELD_BRAND)), StripeJsonUtils.optString(jSONObject, FIELD_LAST4), StripeJsonUtils.optString(jSONObject, FIELD_FINGERPRINT), StripeTextUtils.asFundingType(StripeJsonUtils.optString(jSONObject, FIELD_FUNDING)), StripeJsonUtils.optString(jSONObject, FIELD_COUNTRY), StripeJsonUtils.optString(jSONObject, FIELD_CURRENCY));
    }
}
