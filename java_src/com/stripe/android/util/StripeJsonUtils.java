package com.stripe.android.util;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class StripeJsonUtils {
    static final String EMPTY = "";
    static final String NULL = "null";

    public static String getString(JSONObject jSONObject, String str) throws JSONException {
        return nullIfNullOrEmpty(jSONObject.getString(str));
    }

    public static String optString(JSONObject jSONObject, String str) {
        return nullIfNullOrEmpty(jSONObject.optString(str));
    }

    static String nullIfNullOrEmpty(String str) {
        if (NULL.equals(str) || "".equals(str)) {
            return null;
        }
        return str;
    }
}
