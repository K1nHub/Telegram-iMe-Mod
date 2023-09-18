package com.stripe.android.net;

import com.stripe.android.util.StripeJsonUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
class ErrorParser {
    private static final String FIELD_CHARGE = "charge";
    private static final String FIELD_CODE = "code";
    private static final String FIELD_DECLINE_CODE = "decline_code";
    private static final String FIELD_ERROR = "error";
    private static final String FIELD_MESSAGE = "message";
    private static final String FIELD_PARAM = "param";
    private static final String FIELD_TYPE = "type";
    static final String MALFORMED_RESPONSE_MESSAGE = "An improperly formatted error response was found.";

    ErrorParser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StripeError parseError(String str) {
        StripeError stripeError = new StripeError();
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject(FIELD_ERROR);
            stripeError.charge = StripeJsonUtils.optString(jSONObject, FIELD_CHARGE);
            stripeError.code = StripeJsonUtils.optString(jSONObject, FIELD_CODE);
            stripeError.decline_code = StripeJsonUtils.optString(jSONObject, FIELD_DECLINE_CODE);
            stripeError.message = StripeJsonUtils.optString(jSONObject, FIELD_MESSAGE);
            stripeError.param = StripeJsonUtils.optString(jSONObject, FIELD_PARAM);
            stripeError.type = StripeJsonUtils.optString(jSONObject, "type");
        } catch (JSONException unused) {
            stripeError.message = MALFORMED_RESPONSE_MESSAGE;
        }
        return stripeError;
    }

    /* loaded from: classes6.dex */
    static class StripeError {
        public String charge;
        public String code;
        public String decline_code;
        public String message;
        public String param;
        public String type;

        StripeError() {
        }
    }
}
